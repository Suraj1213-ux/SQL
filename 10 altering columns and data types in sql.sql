CREATE TABLE users(
    id SERIAL PRIMARY KEY,                  -- Unique ID, auto-increases automatically
    name VARCHAR(100) NOT NULL,              -- Name cannot be empty
    email VARCHAR(150) UNIQUE,               -- Email must be unique
    phone VARCHAR(15),                       -- Phone number (optional)
    join_date DATE DEFAULT CURRENT_DATE,     -- Default joining date is today
    salary DECIMAL(10,2) CHECK (salary > 0), -- Salary must be greater than 0
    gender VARCHAR(10),                      -- Gender choices manually (ENUM is different in Postgres)
    is_active BOOLEAN DEFAULT TRUE           -- By default, employee is active
);

select * from users

INSERT INTO users (name, email, phone, salary, gender, is_active)
VALUES
  ('Aarav Sharma', 'aarav.sharma@example.com', '9876543210', 55000, 'Male', true),
  ('Priya Mehta', 'priya.mehta@example.com', '9123456789', 62000, 'Female', true),
  ('Raj Patel', 'raj.patels@example.com', '9988776655', 48000, 'Male', true),
  ('Sneha Kapoor', 'sneha.kapoor@example.com', '9012345678', 73000, 'Female', true);

  alter table users
  rename column phone to phone_no;

  alter table users
  alter column phone_no set not null;

  




