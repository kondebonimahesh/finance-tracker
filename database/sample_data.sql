-- Personal Finance Tracker Database Schema

CREATE DATABASE IF NOT EXISTS finance_tracker;
USE finance_tracker;

-- Categories Table
CREATE TABLE categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(50) NOT NULL,
    category_type ENUM('income', 'expense') NOT NULL
);

-- Transactions Table
CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL(10,2) NOT NULL,
    description VARCHAR(255),
    transaction_date DATE NOT NULL,
    category_id INT,
    transaction_type ENUM('income', 'expense') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

-- Budgets Table
CREATE TABLE budgets (
    budget_id INT PRIMARY KEY AUTO_INCREMENT,
    category_id INT NOT NULL,
    budget_amount DECIMAL(10,2) NOT NULL,
    budget_month DATE NOT NULL,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);