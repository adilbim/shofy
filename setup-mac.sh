#!/bin/bash

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Shofy E-commerce Setup Script (macOS)${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Function to check if PHP extension is installed
php_extension_exists() {
    php -m | grep -i "$1" >/dev/null 2>&1
}

# Check if Homebrew is installed
echo -e "${YELLOW}[0/8] Checking Homebrew installation...${NC}"
if command_exists brew; then
    BREW_VERSION=$(brew --version | head -n 1 | cut -d " " -f 2)
    echo -e "${GREEN}✓ Homebrew $BREW_VERSION is installed${NC}"
else
    echo -e "${YELLOW}  Installing Homebrew...${NC}"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo -e "${GREEN}✓ Homebrew installed successfully${NC}"
    
    # Add Homebrew to PATH for Apple Silicon Macs
    if [[ $(uname -m) == "arm64" ]]; then
        echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zshrc
        eval "$(/opt/homebrew/bin/brew shellenv)"
    fi
fi

# Check and install PHP 8.2
echo -e "${YELLOW}[1/8] Checking PHP installation...${NC}"
if command_exists php; then
    PHP_VERSION=$(php -v | head -n 1 | cut -d " " -f 2 | cut -d "." -f 1,2)
    echo -e "${GREEN}✓ PHP $PHP_VERSION is installed${NC}"
    if [ "$PHP_VERSION" != "8.2" ] && [ "$PHP_VERSION" != "8.3" ]; then
        echo -e "${YELLOW}  Installing PHP 8.2...${NC}"
        brew install php@8.2
        brew link php@8.2 --force
    fi
else
    echo -e "${YELLOW}  Installing PHP 8.2...${NC}"
    brew install php@8.2
    brew link php@8.2 --force
fi

# Check and install PHP extensions
echo -e "${YELLOW}[2/8] Checking PHP extensions...${NC}"
REQUIRED_EXTENSIONS=(
    "mysql"
    "xml"
    "curl"
    "mbstring"
    "zip"
    "gd"
    "intl"
    "bcmath"
    "openssl"
    "exif"
    "fileinfo"
    "ctype"
    "json"
    "tokenizer"
    "iconv"
)

for ext_name in "${REQUIRED_EXTENSIONS[@]}"; do
    if php_extension_exists "$ext_name"; then
        echo -e "${GREEN}✓ PHP extension $ext_name is installed${NC}"
    else
        echo -e "${YELLOW}  PHP extension $ext_name is missing${NC}"
        echo -e "${YELLOW}  Note: Most extensions come with PHP by default on macOS${NC}"
    fi
done

# Check and install Composer
echo -e "${YELLOW}[3/8] Checking Composer installation...${NC}"
if command_exists composer; then
    COMPOSER_VERSION=$(composer --version | cut -d " " -f 3)
    echo -e "${GREEN}✓ Composer $COMPOSER_VERSION is installed${NC}"
else
    echo -e "${YELLOW}  Installing Composer...${NC}"
    brew install composer
    echo -e "${GREEN}✓ Composer installed successfully${NC}"
fi

# Check and install Docker Desktop
echo -e "${YELLOW}[4/8] Checking Docker installation...${NC}"
if command_exists docker; then
    DOCKER_VERSION=$(docker --version | cut -d " " -f 3 | tr -d ',')
    echo -e "${GREEN}✓ Docker $DOCKER_VERSION is installed${NC}"
else
    echo -e "${YELLOW}  Installing Docker Desktop...${NC}"
    brew install --cask docker
    echo -e "${GREEN}✓ Docker Desktop installed successfully${NC}"
    echo -e "${YELLOW}  Please start Docker Desktop from Applications folder${NC}"
    echo -e "${YELLOW}  You may need to restart your terminal after starting Docker${NC}"
fi

# Check and install Docker Compose
echo -e "${YELLOW}[5/8] Checking Docker Compose installation...${NC}"
if command_exists docker-compose; then
    COMPOSE_VERSION=$(docker-compose --version | cut -d " " -f 3 | tr -d ',')
    echo -e "${GREEN}✓ Docker Compose $COMPOSE_VERSION is installed${NC}"
else
    echo -e "${YELLOW}  Docker Compose should be included with Docker Desktop${NC}"
    echo -e "${YELLOW}  If not available, install with: brew install docker-compose${NC}"
fi

# Update PHP configuration
echo -e "${YELLOW}[6/8] Updating PHP configuration...${NC}"
PHP_INI=$(php --ini | grep "Loaded Configuration File" | cut -d ":" -f 2 | xargs)
if [ -f "$PHP_INI" ]; then
    # Backup original php.ini
    if [ ! -f "$PHP_INI.backup" ]; then
        cp "$PHP_INI" "$PHP_INI.backup"
        echo -e "${GREEN}✓ Backed up php.ini${NC}"
    fi
    
    # Update memory_limit
    if grep -q "^memory_limit" "$PHP_INI"; then
        sed -i '' 's/^memory_limit = .*/memory_limit = 256M/' "$PHP_INI"
    else
        echo "memory_limit = 256M" >> "$PHP_INI"
    fi
    
    # Update max_execution_time
    if grep -q "^max_execution_time" "$PHP_INI"; then
        sed -i '' 's/^max_execution_time = .*/max_execution_time = 300/' "$PHP_INI"
    else
        echo "max_execution_time = 300" >> "$PHP_INI"
    fi
    
    echo -e "${GREEN}✓ PHP configuration updated${NC}"
else
    echo -e "${YELLOW}  Could not find php.ini, skipping configuration update${NC}"
fi

# Configure .env file
echo -e "${YELLOW}[7/8] Configuring .env file...${NC}"
cd "$(dirname "$0")"

if [ -f ".env" ]; then
    # Update database configuration for Docker
    # Use 127.0.0.1 since we're running PHP on host, not in Docker
    sed -i '' 's/DB_HOST=mysql/DB_HOST=127.0.0.1/' .env
    sed -i '' 's/DB_DATABASE="laravel"/DB_DATABASE="shofy"/' .env
    sed -i '' 's/DB_USERNAME="root"/DB_USERNAME="root"/' .env
    sed -i '' 's/DB_PASSWORD="your_db_password"/DB_PASSWORD="password"/' .env
    echo -e "${GREEN}✓ .env file configured${NC}"
else
    echo -e "${RED}✗ .env file not found${NC}"
    exit 1
fi

# Install Composer dependencies
echo -e "${YELLOW}[8/8] Installing Composer dependencies...${NC}"
composer install --no-interaction --optimize-autoloader
echo -e "${GREEN}✓ Composer dependencies installed${NC}"

echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Installation Complete!${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "${YELLOW}Next steps:${NC}"
echo "1. Make sure Docker Desktop is running"
echo "2. Run the application: ${GREEN}./run-app-mac.sh${NC}"
echo ""
echo -e "${YELLOW}Or manually:${NC}"
echo "1. Start Docker services: ${GREEN}docker-compose up -d mysql${NC}"
echo "2. Wait for MySQL to be ready (about 30 seconds)"
echo "3. Run migrations: ${GREEN}php artisan migrate${NC}"
echo "4. Seed database: ${GREEN}php artisan db:seed${NC}"
echo "5. Publish assets: ${GREEN}php artisan cms:publish:assets${NC}"
echo "6. Start server: ${GREEN}php artisan serve${NC}"
echo ""
echo -e "${YELLOW}Access the application:${NC}"
echo "Frontend: ${GREEN}http://localhost:8000${NC}"
echo "Admin Panel: ${GREEN}http://localhost:8000/admin${NC}"
echo "Default credentials: ${GREEN}admin / 12345678${NC}"
echo ""
echo -e "${YELLOW}Note: If you encounter permission issues, you may need to:${NC}"
echo "1. Start Docker Desktop from Applications"
echo "2. Restart your terminal"
echo "3. Run: ${GREEN}sudo chown -R \$(whoami) storage bootstrap/cache${NC}"
echo ""
