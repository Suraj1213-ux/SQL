CREATE TABLE employee (
    id SERIAL PRIMARY KEY,                  -- Unique ID, auto-increases automatically
    name VARCHAR(100) NOT NULL,              -- Name cannot be empty
    email VARCHAR(150) UNIQUE,               -- Email must be unique
    phone VARCHAR(15),                       -- Phone number (optional)
    join_date DATE DEFAULT CURRENT_DATE,     -- Default joining date is today
    salary DECIMAL(10,2) CHECK (salary > 0), -- Salary must be greater than 0
    gender VARCHAR(10),                      -- Gender choices manually (ENUM is different in Postgres)
    is_active BOOLEAN DEFAULT TRUE           -- By default, employee is active
);


select *from employee

INSERT INTO employee (name, email, phone, salary, gender, is_active)
VALUES
('Archana Patil', 'archana.patil@example.com', '9876543210', 35000.00, 'Female', TRUE),
('Suraj Sawant', 'suraj.sawant@example.com', '9876543211', 34000.00, 'Male', TRUE),
('Priya Sharma', 'priya.sharma@example.com', '9876543212', 32000.00, 'Female', TRUE),
('Rohan Deshmukh', 'rohan.deshmukh@example.com', '9876543213', 36000.00, 'Male', TRUE),
('Sneha Kulkarni', 'sneha.kulkarni@example.com', '9876543214', 37000.00, 'Female', FALSE),
('Vikram Joshi', 'vikram.joshi@example.com', '9876543215', 33000.00, 'Male', TRUE),
('Anjali Mehra', 'anjali.mehra@example.com', '9876543216', 31000.00, 'Female', TRUE),
('Raj Patel', 'raj.patel@example.com', '9876543217', 30000.00, 'Male', FALSE),
('Neha Verma', 'neha.verma@example.com', '9876543218', 40000.00, 'Female', TRUE),
('Amit Rao', 'amit.rao@example.com', '9876543219', 28000.00, 'Male', TRUE);


select * from employee 
