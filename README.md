# Personal Finance Tracker 

A simple SQL-based personal finance tracking system to manage expenses, income, and budgets.

## Features
- Track income and expenses
- Categorize transactions
- Set monthly budgets
- Budget vs actual spending analysis
- Monthly financial summaries

## Database Schema
- **categories**: Income and expense categories
- **transactions**: Individual financial transactions
- **budgets**: Monthly budget targets per category

## Setup
1. Create database: `mysql -u root -p < database/schema.sql`
2. Load sample data: `mysql -u root -p < database/sample_data.sql`

## Usage
Run analysis queries from `queries/analysis_queries.sql`

## Sample Queries
- Monthly spending by category
- Budget vs actual comparison
- Income vs expense summaries
- Over-budget alerts

## Technologies
- MySQL
- SQL
