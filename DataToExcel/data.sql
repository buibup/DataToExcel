CREATE TABLE Employee 
    (EmpID INT NOT NULL , 
        EmpName VARCHAR(50) NOT NULL, 
	    Designation VARCHAR(50) NULL, 
        Department VARCHAR(50) NULL, 
        JoiningDate DATETIME NULL,
	    CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED (EmpID)
    )
    
-- ADD ROWS TO THE TABLE.

-- SQL SERVER 2008 AND ABOVE.	

INSERT INTO Employee 
	(EmpID, EmpName, Designation, Department, JoiningDate)
VALUES 
	(1, 'CHIN YEN', 'LAB ASSISTANT', 'LAB', GETDATE()),
	(2, 'MIKE PEARL', 'SENIOR ACCOUNTANT', 'ACCOUNTS', GETDATE()),
	(3, 'GREEN FIELD', 'ACCOUNTANT', 'ACCOUNTS', GETDATE()),
	(4, 'DEWANE PAUL', 'PROGRAMMER', 'IT', GETDATE()),
	(5, 'MATTS', 'SR. PROGRAMMER', 'IT', GETDATE()),
	(6, 'PLANK OTO', 'ACCOUNTANT', 'ACCOUNTS', GETDATE())


-- SQL SERVER 2005 AND BEFORE.

INSERT INTO Employee (EmpID, EmpName, Designation, Department, JoiningDate)
	SELECT 1, 'CHIN YEN', 'LAB ASSISTANT', 'LAB', GETDATE()
INSERT INTO Employee (EmpID, EmpName, Designation, Department, JoiningDate)
	SELECT 2, 'MIKE PEARL', 'SENIOR ACCOUNTANT', 'ACCOUNTS', GETDATE()
INSERT INTO Employee (EmpID, EmpName, Designation, Department, JoiningDate)
	SELECT 3, 'GREEN FIELD', 'ACCOUNTANT', 'ACCOUNTS', GETDATE()
INSERT INTO Employee (EmpID, EmpName, Designation, Department, JoiningDate)
	SELECT 4, 'DEWANE PAUL', 'PROGRAMMER', 'IT', GETDATE()
INSERT INTO Employee (EmpID, EmpName, Designation, Department, JoiningDate)
	SELECT 5, 'MATTS', 'SR. PROGRAMMER', 'IT', GETDATE()	
INSERT INTO Employee (EmpID, EmpName, Designation, Department, JoiningDate)
	SELECT 6, 'PLANK OTO', 'ACCOUNTANT', 'ACCOUNTS', GETDATE()

CREATE TABLE [dbo].[EmployeeDetails](
	[EmpID] [int] NULL,
	[EmpName] [varchar](50) NULL,
	[Mobile] [varchar](10) NULL,
	[PresentAddress] [varchar](100) NULL,
	[Area] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[Qualification] [varchar](50) NULL,
	[Email] [varchar](50) NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[EmployeeDetails]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeDetails_Employee] 
    FOREIGN KEY([EmpID])
REFERENCES [dbo].[Employee] ([EmpID])
GO

ALTER TABLE [dbo].[EmployeeDetails] CHECK CONSTRAINT [FK_EmployeeDetails_Employee]
GO
    
-- ADD ROWS TO THE TABLE.

-- SQL SERVER 2008 AND ABOVE.
	    
INSERT INTO EmployeeDetails 
    (EmpID, EmpName, Mobile, PresentAddress, Area, City, Country, Qualification, Email)
VALUES
    (1, 'CHIN YEN', '1234567879', '1 MAIN AVE', 'WA', 'TACOCA', 'USA', 'GRADUATE','chinxyz@emp.com'),
    (2, 'MIKE PEARL', '2152313213', 'B BLOCK NICE STREET', 'WENEN', 'TACOCA', 'SCODD', 'GRADUATE', 
	    'mike230@emample.com'),
    (3, 'GREEN FIELD', '4517825469', 'UNIVERSAL NEW AVE', 'BOURNNILE', 'BRISDON', 'NEW START', 
	    'MANAGEMENT','greenden3939@emample.com'),
    (4, 'DEWANE PAUL', '5741115523', 'SPACE, 1 OF 1', 'ANDALUSIAN', 'PARALLEL', 'NEW RIVER', 
	    'MATHEMATICS','dpaul_lime44@emample.com'),
    (5, 'MATTS', '4755#55522', 'NOT KNOWN', 'WOODOO', 'COMMONS', 'UNITED KINGDOM', 
	    'ADVANCE PHYSICS','matts-ino33@emample.com'),
    (6, 'PLANK OTO', '5124785452', 'TUCSON, AZ MSA', 'ALPINE', 'ARIZONA', 'USA', 
	    'DIPLOMA IN FINANCE','plaoto_nk984@emample.com')

-- SQL SERVER 2005 AND BEFORE.

INSERT INTO EmployeeDetails (EmpID, EmpName, Mobile, PresentAddress, Area, City,Country,Qualification, Email)
    SELECT 1, 'CHIN YEN', '1234567879', '1 MAIN AVE', 'WA', 'TACOCA', 'USA', 'GRADUATE','chinxyz@emp.com'
INSERT INTO EmployeeDetails (EmpID, EmpName, Mobile, PresentAddress, Area, City,Country,Qualification, Email)
    SELECT 2, 'MIKE PEARL', '2152313213', 'B BLOCK NICE STREET', 'WENEN', 'TACOCA', 'SCODD', 'GRADUATE',
        'mike230@emample.com'
	    
INSERT INTO EmployeeDetails (EmpID, EmpName, Mobile, PresentAddress, Area, City,Country,Qualification, Email)
    SELECT 3, 'GREEN FIELD', '4517825469', 'UNIVERSAL NEW AVE', 'BOURNNILE', 'BRISDON', 'NEW START', 
        'MANAGEMENT','greenden3939@emample.com'
	    
INSERT INTO EmployeeDetails (EmpID, EmpName, Mobile, PresentAddress, Area, City,Country,Qualification, Email)
    SELECT 4, 'DEWANE PAUL', '5741115523', 'SPACE, 1 OF 1', 'ANDALUSIAN', 'PARALLEL', 'NEW RIVER', 
        'MATHEMATICS','dpaul_lime44@emample.com'
	    
INSERT INTO EmployeeDetails (EmpID, EmpName, Mobile, PresentAddress, Area, City,Country,Qualification, Email)
    SELECT 5, 'MATTS', '4755#55522', 'NOT KNOWN', 'WOODOO', 'COMMONS', 'UNITED KINGDOM', 
        'ADVANCE PHYSICS','matts-ino33@emample.com'
	    
INSERT INTO EmployeeDetails (EmpID, EmpName, Mobile, PresentAddress, Area, City,Country,Qualification, Email)
    SELECT 6, 'PLANK OTO', '5124785452', 'TUCSON, AZ MSA', 'ALPINE', 'ARIZONA', 'USA', 
        'DIPLOMA IN FINANCE','plaoto_nk984@emample.com'




CREATE TABLE [dbo].[Books](
[BookID] [int] IDENTITY(1,1) NOT NULL,
[BookName] [varchar](50) NULL,
[Category] [varchar](50) NULL,
[Price] [numeric](18, 2) NULL,
[Price_Range] [varchar](20) NULL,
PRIMARY KEY CLUSTERED ( [BookID] ASC )
) ON [PRIMARY]

GO

-- ADD FEW ROWS TO THE TABLE.

-- SQL SERVER 2008 AND ABOVE.

INSERT INTO dbo.Books 
    (BookName, Category, Price, Price_Range)
VALUES	
    ('Computer Architecture', 'Computers', 125.6, '100-150'),
    ('Advanced Composite Materials', 'Science', 172.56, '150-200'),
    ('Asp.Net 4 Blue Book', 'Programming', 56.00, '50-100'),
    ('Strategies Unplugged', 'Science', 99.99, '50-100'),
    ('Teaching Science', 'Science', 164.10, '150-200'),
    ('Challenging Times', 'Business', 150.70, '150-200'),
    ('Circuit Bending', 'Science', 112.00, '100-150'),
    ('Popular Science', 'Science', 210.40, '200-250'),
    ('ADOBE Premiere', 'Computers', 62.20, '50-100')
	
-- SQL SERVER 2005 AND BEFORE.	

INSERT INTO dbo.Books (BookName, Category, Price, Price_Range)
    SELECT 'Computer Architecture', 'Computers', 125.6, '100-150'
INSERT INTO dbo.Books (BookName, Category, Price, Price_Range)
    SELECT 'Advanced Composite Materials', 'Science', 172.56, '150-200'	
INSERT INTO dbo.Books (BookName, Category, Price, Price_Range)
    SELECT 'Asp.Net 4 Blue Book', 'Programming', 56.00, '50-100'	
INSERT INTO dbo.Books (BookName, Category, Price, Price_Range)
    SELECT 'Strategies Unplugged', 'Science', 99.99, '50-100'
INSERT INTO dbo.Books (BookName, Category, Price, Price_Range)
    SELECT 'Teaching Science', 'Science', 164.10, '150-200'
INSERT INTO dbo.Books (BookName, Category, Price, Price_Range)
    SELECT 'Challenging Times', 'Business', 150.70, '150-200'
INSERT INTO dbo.Books (BookName, Category, Price, Price_Range)
    SELECT 'Circuit Bending', 'Science', 112.00, '100-150'
INSERT INTO dbo.Books (BookName, Category, Price, Price_Range)
    SELECT 'Popular Science', 'Science', 210.40, '200-250'
INSERT INTO dbo.Books (BookName, Category, Price, Price_Range)
    SELECT 'ADOBE Premiere', 'Computers', 62.20, '50-100'

