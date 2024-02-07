Create database Company;

USE COMPANY;

-- Creating Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    ContactNumber VARCHAR(20),
    DepartmentID INT,
    HireDate DATE
);
INSERT INTO Employees (Name, ContactNumber, DepartmentID, HireDate)
VALUES
    ('John Doe', '1234567890', 1, '2022-01-15'),
    ('Alice Smith', '9876543210', 2, '2022-02-28'),
    ('Bob Johnson', '5551234567', 1, '2021-11-05'),
    ('Emily Davis', '3337890123', 3, '2022-03-10'),
    ('Michael Brown', '4444567890', 2, '2022-04-20'),
    ('Jessica Lee', '7776543210', 1, '2021-08-12'),
    ('David Williams', '6661234567', 2, '2022-06-25'),
    ('Sophia Garcia', '9997890123', 3, '2022-07-17'),
    ('Daniel Martinez', '2224567890', 1, '2022-09-03'),
    ('Olivia Rodriguez', '1116543210', 2, '2022-10-30'),
    ('Ethan Hernandez', '8881234567', 1, '2022-11-19'),
    ('Ava Smith', '5557890123', 3, '2021-12-22'),
    ('Noah Nguyen', '3334567890', 1, '2022-02-18'),
    ('Isabella Kim', '7776543210', 2, '2022-04-07'),
    ('Liam Patel', '2221234567', 1, '2022-06-14'),
    ('Emma Lopez', '8887890123', 3, '2022-08-29'),
    ('Mia Johnson', '1114567890', 1, '2022-10-01'),
    ('Lucas Thomas', '4446543210', 2, '2021-09-26'),
    ('Alexander Clark', '6661234567', 1, '2022-11-15'),
    ('Charlotte Baker', '9997890123', 3, '2022-01-04');

-- Creating PerformanceReviews table
CREATE TABLE PerformanceReviews (
    ReviewID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT,
    ReviewDate DATE,
    Reviewer VARCHAR(100),
    PerformanceScore INT,
    Feedback TEXT,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
INSERT INTO PerformanceReviews (EmployeeID, ReviewDate, Reviewer, PerformanceScore, Feedback)
VALUES
    (1, '2022-05-15', 'Manager A', 90, 'Great performance overall.'),
    (2, '2022-06-20', 'Manager B', 85, 'Shows improvement but needs to work on time management.'),
    (3, '2022-07-25', 'Manager C', 75, 'Needs improvement in communication skills.'),
    (4, '2022-08-10', 'Manager A', 92, 'Exceeds expectations in teamwork.'),
    (5, '2022-09-05', 'Manager B', 88, 'Excellent work ethic and dedication.'),
    (6, '2022-10-12', 'Manager C', 80, 'Consistently meets expectations.'),
    (7, '2022-11-18', 'Manager A', 94, 'Outstanding performance in all areas.'),
    (8, '2022-12-22', 'Manager B', 86, 'Shows potential but needs more focus.'),
    (9, '2023-01-30', 'Manager C', 78, 'Struggles with meeting deadlines.'),
    (10, '2023-02-28', 'Manager A', 91, 'Demonstrates strong leadership skills.');

-- Creating SalaryDetails table
CREATE TABLE SalaryDetails (
    SalaryID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT,
    Salary DECIMAL(10, 2),
    Bonuses DECIMAL(10, 2),
    Deductions DECIMAL(10, 2),
    PayPeriodStart DATE,
    PayPeriodEnd DATE,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

INSERT INTO SalaryDetails (EmployeeID, Salary, Bonuses, Deductions, PayPeriodStart, PayPeriodEnd)
VALUES
    (1, 60000.00, 3000.00, 1000.00, '2023-11-01', '2023-11-15'),
    (2, 70000.00, 3500.00, 1200.00, '2023-11-01', '2023-11-15'),
    (3, 65000.00, 3200.00, 1100.00, '2023-11-01', '2023-11-15'),
    (4, 58000.00, 2800.00, 900.00, '2023-11-01', '2023-11-15'),
    (5, 62000.00, 3100.00, 1050.00, '2023-11-01', '2023-11-15'),
    (6, 59000.00, 2900.00, 950.00, '2023-11-01', '2023-11-15'),
    (7, 50000.00, 2800.00, 900.00, '2023-11-01', '2023-11-15'),
    (8, 62500.00, 3100.00, 1050.00, '2023-11-01', '2023-11-15'),
    (9, 51000.00, 2900.00, 950.00, '2023-11-01', '2023-11-15'),
    (10, 48000.00, 2000.00, 900.00, '2023-11-01', '2023-11-15'),
    (11, 66000.00, 3150.00, 1150.00, '2023-11-01', '2023-11-15'),
    (12, 54500.00, 2600.00, 950.00, '2023-11-01', '2023-11-15'),
    (13, 58000.00, 2800.00, 900.00, '2023-11-01', '2023-11-15'),
    (14, 62000.00, 3100.00, 1050.00, '2023-11-01', '2023-11-15'),
    (15, 59000.00, 2900.00, 950.00, '2023-11-01', '2023-11-15'),
    (16, 58000.00, 2800.00, 900.00, '2023-11-01', '2023-11-15'),
    (17, 62000.00, 3100.00, 1050.00, '2023-11-01', '2023-11-15'),
    (18, 50000.00, 2900.00, 950.00, '2023-11-01', '2023-11-15'),
    (19, 48000.00, 2800.00, 950.00, '2023-11-01', '2023-11-15'),
    (20, 64000.00, 3100.00, 1150.00, '2023-11-01', '2023-11-15');

-- Creating TrainingCertifications table
CREATE TABLE TrainingCertifications (
    TrainingID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT,
    TrainingName VARCHAR(100),
    CompletionDate DATE,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
INSERT INTO TrainingCertifications (EmployeeID, TrainingName, CompletionDate)
VALUES
    (1, 'Leadership Skills', '2023-10-20'),
    (2, 'Sales Techniques', '2023-09-15'),
    (3, 'Project Management', '2023-11-05'),
    (5, 'Time Management', '2023-07-25'),
    (6, 'Customer Service Training', '2023-06-10'),
    (8, 'Technical Skills Development', '2023-10-12'),
    (9, 'Conflict Resolution', '2023-11-18'),
    (10, 'Data Analysis Fundamentals', '2023-08-05'),
    (11, 'Presentation Skills', '2023-07-15'),
    (12, 'Team Building Workshop', '2023-09-30'),
    (13, 'Problem-Solving Techniques', '2023-10-22'),
    (14, 'Ethical Practices in Workplace', '2023-06-28'),
    (15, 'Leadership Development Program', '2023-11-10'),
    (16, 'Sales Management Training', '2023-09-05'),
    (18, 'Digital Marketing Course', '2023-07-30'),
    (19, 'Financial Planning Workshop', '2023-10-08'),
    (20, 'HR Policies and Compliance', '2023-11-25');

    
-- Creating EmployeeGoals table
CREATE TABLE EmployeeGoals (
    GoalID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT,
    GoalDescription TEXT,
    GoalDeadline DATE,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
INSERT INTO EmployeeGoals (EmployeeID, GoalDescription, GoalDeadline)
VALUES
    (1, 'Complete sales training', '2023-11-15'),
    (1, 'Achieve 10% increase in sales', '2023-12-31'),

    (2, 'Complete project management course', '2023-10-30'),
    (2, 'Submit project report', '2023-11-15'),

    (3, 'Learn new programming language', '2023-11-30'),
    (3, 'Contribute to open-source project', '2023-12-15'),

    (4, 'Attend leadership workshop', '2023-10-20'),
    (4, 'Initiate team-building activities', '2023-11-30'),

    (5, 'Complete Project X milestones', '2022-12-31'),
    (5, 'Increase sales by 15%', '2022-12-15'),

    (6, 'Improve customer satisfaction ratings', '2022-11-15'),
    (6, 'Enhance product development skills', '2022-12-31'),

    (7, 'Learn advanced data analysis techniques', '2022-10-30'),
    (7, 'Contribute to team innovation', '2022-11-30'),

    (9, 'Acquire new certifications', '2022-12-15'),
    (9, 'Improve time management skills', '2022-11-30'),

    (10, 'Complete leadership training program', '2022-10-31'),
    (10, 'Develop effective communication skills', '2022-11-30'),

    (15, 'Enhance project management abilities', '2022-12-31'),
    (16, 'Increase productivity by 20%', '2022-11-15'),

    (17, 'Achieve sales targets', '2022-12-15'),
    (7, 'Improve client relations', '2022-11-30'),

    (18, 'Expand knowledge in software development', '2022-10-30'),
    (8, 'Contribute to company-wide initiatives', '2022-11-15'),

    (19, 'Complete training on new technologies', '2022-11-30'),
    (19, 'Lead team projects', '2022-12-31'),

    (20, 'Enhance customer support strategies', '2022-12-15'),
    (13, 'Develop leadership skills', '2022-11-30');


-- Creating EmployeeFeedbackSurveys table
CREATE TABLE EmployeeFeedbackSurveys (
    SurveyID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT,
    SurveyDate DATE,
    SurveyResponse TEXT,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
INSERT INTO EmployeeFeedbackSurveys (EmployeeID, SurveyDate, SurveyResponse)
VALUES
    (1, '2022-12-05', 'Employee provided constructive feedback on team communication.'),
    (2, '2022-12-07', 'Employee suggested improvements in product development processes.'),
    (3, '2022-12-10', 'Employee expressed satisfaction with the training programs.'),
    (4, '2022-12-12', 'Employee suggested changes in time management practices.'),
    (5, '2022-12-14', 'Employee provided positive feedback on leadership training.'),
    (7, '2022-12-20', 'Employee suggested enhancements in sales strategies.'),
    (8, '2022-12-22', 'Employee provided feedback on software development approaches.'),
    (9, '2022-12-25', 'Employee suggested improvements in team collaboration.'),
    (10, '2022-12-28', 'Employee expressed satisfaction with customer support training.'),
    (11, '2022-12-30', 'Employee felt neutral about the recent changes in office policies.'),
    (12, '2023-01-02', 'Employee expressed dissatisfaction with the new scheduling system.'),
    (14, '2023-01-08', 'Employee provided suggestions for improvement in cafeteria services.'),
    (15, '2023-01-10', 'Employee felt neutral about the remote work policy changes.'),
    (17, '2023-01-15', 'Employee provided feedback on the company culture.'),
    (18, '2023-01-18', 'Employee felt dissatisfied with the recent equipment upgrades.'),
    (19, '2023-01-20', 'Employee expressed appreciation for the management team.');

-- Creating Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(100),
    ManagerID INT
);
INSERT INTO Departments (DepartmentName, ManagerID)
VALUES
    ('Marketing', 11),
    ('IT', 2),
    ('Sales',14);

-- Creating PerformanceMetrics table
CREATE TABLE PerformanceMetrics (
    MetricID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT,
    MetricName VARCHAR(100),
    MetricValue DECIMAL(10, 2),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
INSERT INTO PerformanceMetrics (EmployeeID, MetricName, MetricValue)
VALUES
    (1, 'Productivity', 75.5),
    (2, 'Customer Satisfaction', 85.2),
    (3, 'Attendance Rate', 94.7),
    (4, 'Quality of Work', 78.3),
    (5, 'Communication Skills', 87.9),
    (6, 'Project Completion Rate', 80.6),
    (7, 'Sales Performance', 88.4),
    (8, 'Coding Efficiency', 76.9),
    (9, 'Team Collaboration', 82.1),
    (10, 'Problem-solving Skills', 79.8),
    (11, 'Creativity', 85.3),
    (12, 'Time Management', 77.6),
    (13, 'Leadership Skills', 89.7),
    (14, 'Process Improvement', 81.2),
    (15, 'Adaptability', 83.4),
    (16, 'Stress Management', 78.9),
    (17, 'Innovation', 86.5),
    (18, 'Technical Skills', 79.1),
    (19, 'Decision-making', 84.7),
    (20, 'Adherence to Deadlines', 80.2);

