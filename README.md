# WellBest - Manufacturing Management System

<p align="center">
  <img src="https://img.shields.io/badge/Laravel-12.x-red?style=for-the-badge&logo=laravel" alt="Laravel Version">
  <img src="https://img.shields.io/badge/PHP-8.2+-blue?style=for-the-badge&logo=php" alt="PHP Version">
  <img src="https://img.shields.io/badge/Filament-3.3-orange?style=for-the-badge&logo=filament" alt="Filament Version">
  <img src="https://img.shields.io/badge/License-MIT-green?style=for-the-badge" alt="License">
</p>

## 📋 About WellBest

WellBest is a comprehensive manufacturing management system built with Laravel and Filament Admin Panel. The application provides a robust solution for managing manufacturing operations, including machine management, process control, quality assurance, and defect tracking.

### 🎯 Key Features

-   **Machine Management**: Complete machine inventory with categories, warehouses, and status tracking
-   **Process Control**: Structured process workflows with ordering and categorization
-   **Quality Management**: NG (No Good) defect tracking and classification system
-   **User Management**: Role-based access control with permissions
-   **Admin Panel**: Modern, responsive admin interface powered by Filament
-   **Data Integrity**: Soft deletes and audit trails for critical data

### 🏗️ System Architecture

The system is built around four core modules:

1. **Machine Categories**: Organize machines by type and function
2. **Machines**: Individual machine records with detailed specifications
3. **Processes**: Manufacturing process definitions and workflows
4. **NG Defects**: Quality control and defect classification

## 🚀 Technology Stack

-   **Backend**: Laravel 12.x (PHP 8.2+)
-   **Admin Panel**: Filament 3.3
-   **Database**: SQLite (configurable for MySQL/PostgreSQL)
-   **Frontend**: Tailwind CSS 4.0
-   **Build Tool**: Vite 7.0
-   **Authentication**: Laravel Sanctum
-   **Permissions**: Spatie Laravel Permission with Filament Shield

## 📦 Installation

### Prerequisites

-   PHP 8.2 or higher
-   Composer
-   Node.js & NPM
-   SQLite (or MySQL/PostgreSQL)

### Quick Start

1. **Clone the repository**

    ```bash
    git clone https://github.com/fauzannursalma/wellbest.git
    cd wellbest
    ```

2. **Install PHP dependencies**

    ```bash
    composer install
    ```

3. **Install Node dependencies**

    ```bash
    npm install
    ```

4. **Environment setup**

    ```bash
    cp .env.example .env
    php artisan key:generate
    ```

5. **Database setup**

    ```bash
    touch database/database.sqlite
    php artisan migrate
    php artisan db:seed
    ```

6. **Create admin user**

    ```bash
    php artisan make:filament-user
    ```

7. **Start development servers**

    ```bash
    composer run dev
    ```

    This will start all services concurrently:

    - Laravel development server (port 8000)
    - Queue worker
    - Log viewer (Pail)
    - Vite asset compiler

## 🔧 Configuration

### Database Configuration

Update your `.env` file with database credentials:

```env
DB_CONNECTION=sqlite
DB_DATABASE=/absolute/path/to/database/database.sqlite
```

For MySQL/PostgreSQL:

```env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=wellbest
DB_USERNAME=your_username
DB_PASSWORD=your_password
```

### Filament Configuration

The admin panel is accessible at `/admin`. Configure additional settings in `config/filament.php`.

## 📊 Database Schema

### Core Tables

-   **machine_categories**: Machine type classifications
-   **machines**: Individual machine records
-   **processes**: Manufacturing process definitions
-   **ng_defects**: Quality defect classifications
-   **users**: System users with role-based permissions

### Relationships

-   Machines belong to Machine Categories
-   Processes are organized by Machine Categories
-   Soft deletes enabled for data integrity
-   Audit trails through Laravel timestamps

## 🛡️ Security & Permissions

The application implements comprehensive role-based access control:

-   **Super Admin**: Full system access
-   **Manager**: Department-level management
-   **Operator**: Limited operational access
-   **Viewer**: Read-only access

Permissions are managed through Spatie Laravel Permission with Filament Shield integration.

## 🧪 Testing

Run the test suite:

```bash
composer test
```

For continuous testing during development:

```bash
php artisan test --parallel
```

## 📈 Performance

### Optimization Features

-   **Database Indexing**: Optimized queries for large datasets
-   **Eager Loading**: Prevents N+1 query problems
-   **Soft Deletes**: Maintains data integrity without hard deletions
-   **Cache Integration**: Laravel cache for improved performance

### Production Deployment

```bash
composer install --optimize-autoloader --no-dev
php artisan config:cache
php artisan route:cache
php artisan view:cache
npm run build
```

## 🔄 Development Workflow

### Code Standards

-   PSR-12 coding standards
-   Laravel Pint for code formatting
-   PHPUnit for testing
-   Conventional commits

### Available Commands

```bash
# Development server with hot reload
composer run dev

# Code formatting
./vendor/bin/pint

# Run tests
composer test

# Clear all caches
php artisan optimize:clear
```

## 📚 API Documentation

The application provides RESTful APIs for integration:

-   **Machines API**: CRUD operations for machine management
-   **Processes API**: Process workflow management
-   **Defects API**: Quality control data access
-   **Users API**: User management endpoints

## 🤝 Contributing

We welcome contributions! Please follow these guidelines:

1. Fork the repository
2. Create a feature branch
3. Make your changes with tests
4. Ensure code passes all checks
5. Submit a pull request

### Development Setup

```bash
# Install development dependencies
composer install
npm install

# Set up pre-commit hooks
php artisan ide-helper:generate
php artisan ide-helper:models
```

## 📄 License

This project is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).

## 🆘 Support

For support and questions:

-   **Issues**: [GitHub Issues](https://github.com/fauzannursalma/wellbest/issues)
-   **Discussions**: [GitHub Discussions](https://github.com/fauzannursalma/wellbest/discussions)
-   **Documentation**: [Wiki](https://github.com/fauzannursalma/wellbest/wiki)

## 🏷️ Version History

-   **v1.0.0** - Initial release with core functionality
-   Machine and process management
-   NG defect tracking
-   User management with roles
-   Filament admin panel integration

---

<p align="center">
Made with ❤️ by <a href="https://github.com/fauzannursalma">Fauzan Nur Salma</a>
</p>
