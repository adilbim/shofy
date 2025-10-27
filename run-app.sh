#!/bin/bash

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Shofy E-commerce Application Runner${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""

cd /home/adilbim/projects/e-com/shofy

# Function to check if Docker container is running
check_container() {
    docker-compose ps | grep "$1" | grep "Up" >/dev/null 2>&1
}

# Step 1: Start Docker services
echo -e "${YELLOW}[1/6] Starting Docker services...${NC}"
docker-compose up -d mysql
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✓ Docker services started${NC}"
else
    echo -e "${RED}✗ Failed to start Docker services${NC}"
    exit 1
fi

# Step 2: Wait for MySQL to be ready
echo -e "${YELLOW}[2/6] Waiting for MySQL to be ready...${NC}"
echo -e "${BLUE}This may take up to 30 seconds...${NC}"
COUNTER=0
MAX_TRIES=30
until docker-compose exec -T mysql mysqladmin ping -h localhost -ppassword --silent 2>/dev/null; do
    COUNTER=$((COUNTER + 1))
    if [ $COUNTER -gt $MAX_TRIES ]; then
        echo -e "${RED}✗ MySQL failed to start within 30 seconds${NC}"
        exit 1
    fi
    echo -n "."
    sleep 1
done
echo ""
echo -e "${GREEN}✓ MySQL is ready${NC}"

# Step 3: Run migrations
echo -e "${YELLOW}[3/6] Running database migrations...${NC}"
php artisan migrate --force
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✓ Migrations completed${NC}"
else
    echo -e "${RED}✗ Migration failed${NC}"
    echo -e "${YELLOW}Tip: Check if the database connection is correct in .env${NC}"
    exit 1
fi

# Step 4: Seed database (optional)
echo -e "${YELLOW}[4/6] Seeding database with sample data...${NC}"
read -p "Do you want to seed the database with sample data? (y/n): " -n 1 -r
echo ""
if [[ $REPLY =~ ^[Yy]$ ]]; then
    php artisan db:seed --force
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}✓ Database seeded successfully${NC}"
        echo -e "${BLUE}Default admin credentials: admin / 12345678${NC}"
    else
        echo -e "${RED}✗ Seeding failed${NC}"
    fi
else
    echo -e "${YELLOW}Skipping database seeding${NC}"
    echo -e "${BLUE}You can create an admin user later with: php artisan cms:user:create${NC}"
fi

# Step 5: Publish assets
echo -e "${YELLOW}[5/6] Publishing CMS assets...${NC}"
php artisan cms:publish:assets
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✓ Assets published${NC}"
else
    echo -e "${RED}✗ Asset publishing failed${NC}"
fi

# Step 6: Start Laravel server
echo -e "${YELLOW}[6/6] Starting Laravel development server...${NC}"
echo ""
echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}  Application is ready!${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo -e "${YELLOW}Access URLs:${NC}"
echo -e "  Frontend:    ${GREEN}http://localhost:8000${NC}"
echo -e "  Admin Panel: ${GREEN}http://localhost:8000/admin${NC}"
echo ""
if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo -e "${YELLOW}Default Admin Credentials:${NC}"
    echo -e "  Username: ${GREEN}admin${NC}"
    echo -e "  Password: ${GREEN}12345678${NC}"
else
    echo -e "${YELLOW}Create admin user with:${NC} ${GREEN}php artisan cms:user:create${NC}"
fi
echo ""
echo -e "${BLUE}Starting server... Press Ctrl+C to stop${NC}"
echo ""

php artisan serve

