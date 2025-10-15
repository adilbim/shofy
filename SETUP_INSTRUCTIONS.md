# Shofy E-commerce Setup Instructions

This guide will help you set up and run the Shofy e-commerce application.

## Prerequisites

- Ubuntu/Debian-based Linux system (WSL2 supported)
- sudo access
- Internet connection

## Quick Setup

### Step 1: Run the Setup Script

The setup script will install all required dependencies and configure the application.

```bash
sudo ./setup.sh
```

This script will:
- ✓ Check and install PHP 8.2
- ✓ Install required PHP extensions (mysql, xml, curl, mbstring, zip, gd, intl, bcmath)
- ✓ Install Composer
- ✓ Install Docker and Docker Compose
- ✓ Update PHP configuration (memory_limit=256M, max_execution_time=300)
- ✓ Configure .env file for Docker
- ✓ Install Composer dependencies

### Step 2: Run the Application

After the setup is complete, run the application script:

```bash
./run-app.sh
```

This script will:
- ✓ Start Docker MySQL container
- ✓ Wait for MySQL to be ready
- ✓ Run database migrations
- ✓ Ask if you want to seed sample data
- ✓ Publish CMS assets
- ✓ Start Laravel development server

## Access the Application

Once the server is running:

- **Frontend**: http://localhost:8000
- **Admin Panel**: http://localhost:8000/admin

### Default Admin Credentials (if you seeded the database)

- **Username**: `admin`
- **Password**: `12345678`

### Create Admin User (if you didn't seed the database)

```bash
php artisan cms:user:create
```

## Manual Setup (Alternative)

If you prefer to run commands manually:

### 1. Install Dependencies

```bash
sudo apt update
sudo apt install -y php8.2 php8.2-cli php8.2-mysql php8.2-xml php8.2-curl \
    php8.2-mbstring php8.2-zip php8.2-gd php8.2-intl php8.2-bcmath \
    php8.2-common php8.2-fpm docker.io docker-compose

# Install Composer
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
```

### 2. Configure Environment

```bash
# Update .env file
sed -i 's/DB_HOST=127.0.0.1/DB_HOST=mysql/' .env
sed -i 's/DB_DATABASE="laravel"/DB_DATABASE="shofy"/' .env
sed -i 's/DB_PASSWORD="your_db_password"/DB_PASSWORD="password"/' .env
```

### 3. Install Composer Dependencies

```bash
composer install --no-interaction
```

### 4. Start Docker Services

```bash
docker-compose up -d mysql
```

### 5. Wait for MySQL (about 30 seconds)

```bash
# Check if MySQL is ready
docker-compose exec mysql mysqladmin ping -h localhost -ppassword
```

### 6. Run Migrations

```bash
php artisan migrate
```

### 7. Seed Database (Optional)

```bash
php artisan db:seed
```

### 8. Publish Assets

```bash
php artisan cms:publish:assets
```

### 9. Start Server

```bash
php artisan serve
```

## Troubleshooting

### MySQL Connection Issues

If you get database connection errors:

1. Check if MySQL container is running:
   ```bash
   docker-compose ps
   ```

2. Restart MySQL container:
   ```bash
   docker-compose restart mysql
   ```

3. Check MySQL logs:
   ```bash
   docker-compose logs mysql
   ```

### Port Already in Use

If port 8000 is already in use, you can specify a different port:

```bash
php artisan serve --port=8080
```

### Permission Issues

If you encounter permission issues:

```bash
sudo chmod -R 775 storage bootstrap/cache
sudo chown -R $USER:$USER storage bootstrap/cache
```

### Clear Cache

If you need to clear the application cache:

```bash
php artisan cache:clear
php artisan config:clear
php artisan route:clear
php artisan view:clear
```

## Stopping the Application

1. Press `Ctrl+C` to stop the Laravel server
2. Stop Docker containers:
   ```bash
   docker-compose down
   ```

## Useful Commands

### Create Admin User
```bash
php artisan cms:user:create
```

### Clear All Caches
```bash
php artisan optimize:clear
```

### View Application Logs
```bash
tail -f storage/logs/laravel.log
```

### Access MySQL CLI
```bash
docker-compose exec mysql mysql -uroot -ppassword shofy
```

## Requirements Met

✓ PHP >= 8.2  
✓ MySQL Database server (via Docker)  
✓ PDO PHP extension  
✓ OpenSSL PHP extension  
✓ mbstring PHP extension  
✓ exif PHP extension  
✓ fileinfo PHP extension  
✓ xml PHP extension  
✓ Ctype PHP extension  
✓ JSON PHP extension  
✓ Tokenizer PHP extension  
✓ cURL PHP extension  
✓ zip PHP extension  
✓ iconv PHP extension  

## Support

For more information, refer to the original installation documentation or visit the Botble CMS documentation.

