-- Sample data for Personal Finance Tracker

USE finance_tracker;

-- Insert Categories
INSERT INTO categories (category_name, category_type) VALUES
('Salary', 'income'),
('Freelance', 'income'),
('Food', 'expense'),
('Transport', 'expense'),
('Entertainment', 'expense'),
('Utilities', 'expense'),
('Rent', 'expense'),
('Investments', 'income');

-- Insert Sample Transactions
INSERT INTO transactions (amount, description, transaction_date, category_id, transaction_type) VALUES
(3000.00, 'Monthly Salary', '2024-01-01', 1, 'income'),
(150.00, 'Grocery Shopping', '2024-01-02', 3, 'expense'),
(50.00, 'Gas', '2024-01-03', 4, 'expense'),
(500.00, 'Website Project', '2024-01-05', 2, 'income'),
(75.00, 'Dinner with friends', '2024-01-06', 3, 'expense'),
(30.00, 'Bus pass', '2024-01-07', 4, 'expense'),
(1200.00, 'Apartment Rent', '2024-01-01', 7, 'expense'),
(300.00, 'Stock Dividends', '2024-01-10', 8, 'income');

-- Insert Sample Budgets
INSERT INTO budgets (category_id, budget_amount, budget_month) VALUES
(3, 400.00, '2024-01-01'),  
(4, 200.00, '2024-01-01'),  
(5, 100.00, '2024-01-01'),  
(6, 150.00, '2024-01-01');  
