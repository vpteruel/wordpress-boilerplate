CREATE TABLE purchase_requisition (
    id SERIAL PRIMARY KEY,
    site VARCHAR(255) NOT NULL,
    type VARCHAR(50) NOT NULL,
    total_sum DECIMAL(10, 2) NOT NULL,
    items TEXT NOT NULL,
    purchase_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Insert example data
INSERT INTO purchase_requisition (site, type, total_sum, items, purchase_date) VALUES 
    ('Stratford', 'Expense', 1500.00, 'Item1, Item2, Item3', '2023-10-01'),
    ('St. Marys', 'Capital', 25000.00, 'Item4, Item5', '2023-10-02'),
    ('Stratford', 'Construction', 50000.00, 'Item6, Item7, Item8', '2023-10-03');