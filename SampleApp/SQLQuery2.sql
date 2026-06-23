USE SampleAppDb;
GO

-- 1. Create the Employees Table
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employees]') AND type in (N'U'))
BEGIN
    CREATE TABLE dbo.Employees (
        Id INT IDENTITY(1,1) PRIMARY KEY, -- Standard EF Core auto-incrementing primary key
        FirstName NVARCHAR(100) NOT NULL,
        LastName NVARCHAR(100) NOT NULL,
        Email NVARCHAR(255) NULL,
        PhoneNumber NVARCHAR(50) NULL,
        Department NVARCHAR(100) NULL,
        Position NVARCHAR(100) NULL,
        Salary DECIMAL(18, 2) NOT NULL,
        HireDate DATETIME2 NOT NULL,
        Status INT NOT NULL
    );
END
GO

-- 2. Insert Sample Data
INSERT INTO dbo.Employees 
    (FirstName, LastName, Email, PhoneNumber, Department, Position, Salary, HireDate, Status)
VALUES
    ('John', 'Doe', 'john.doe@example.com', '555-0101', 'IT', 'Software Engineer', 85000.00, '2021-03-15', 1),
    ('Jane', 'Smith', 'jane.smith@example.com', '555-0102', 'HR', 'HR Manager', 75000.00, '2020-05-20', 1),
    ('Michael', 'Johnson', 'michael.j@example.com', '555-0103', 'Finance', 'Financial Analyst', 68000.00, '2022-01-10', 1),
    ('Emily', 'Davis', 'emily.davis@example.com', '555-0104', 'IT', 'QA Tester', 62000.00, '2023-06-01', 1),
    ('David', 'Wilson', 'david.wilson@example.com', '555-0105', 'Sales', 'Sales Representative', 55000.00, '2019-11-12', 0),
    ('Sarah', 'Brown', 'sarah.brown@example.com', '555-0106', 'Marketing', 'Marketing Specialist', 60000.00, '2021-08-25', 1),
    ('James', 'Taylor', 'james.taylor@example.com', '555-0107', 'Operations', 'Operations Manager', 90000.00, '2018-04-30', 1),
    ('Jessica', 'Anderson', 'j.anderson@example.com', '555-0108', 'Customer Support', 'Support Agent', 45000.00, '2023-02-15', 1),
    ('William', 'Thomas', 'william.t@example.com', '555-0109', 'IT', 'Systems Administrator', 78000.00, '2020-09-05', 1),
    ('Ashley', 'Jackson', 'ashley.j@example.com', '555-0110', 'Finance', 'Accountant', 65000.00, '2022-10-20', 1);
GO