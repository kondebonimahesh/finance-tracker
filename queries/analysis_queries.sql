-- Analysis Queries for Personal Finance Tracker

-- Monthly Spending by Category
SELECT 
    c.category_name,
    SUM(t.amount) as total_spent
FROM transactions t
JOIN categories c ON t.category_id = c.category_id
WHERE t.transaction_type = 'expense'
GROUP BY c.category_name
ORDER BY total_spent DESC;

-- Budget vs Actual Spending
SELECT 
    c.category_name,
    b.budget_amount as planned_budget,
    COALESCE(SUM(t.amount), 0) as actual_spending,
    (b.budget_amount - COALESCE(SUM(t.amount), 0)) as difference
FROM budgets b
JOIN categories c ON b.category_id = c.category_id
LEFT JOIN transactions t ON t.category_id = c.category_id 
    AND t.transaction_type = 'expense'
    AND MONTH(t.transaction_date) = MONTH(b.budget_month)
    AND YEAR(t.transaction_date) = YEAR(b.budget_month)
WHERE b.budget_month = '2024-01-01'
GROUP BY c.category_name, b.budget_amount;

-- Income vs Expenses Summary
SELECT 
    SUM(CASE WHEN transaction_type = 'income' THEN amount ELSE 0 END) as total_income,
    SUM(CASE WHEN transaction_type = 'expense' THEN amount ELSE 0 END) as total_expenses,
    (SUM(CASE WHEN transaction_type = 'income' THEN amount ELSE 0 END) - 
     SUM(CASE WHEN transaction_type = 'expense' THEN amount ELSE 0 END)) as net_savings
FROM transactions;