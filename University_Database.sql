create database university_data;
use university_data;
CREATE TABLE college (
    CollegeID INT PRIMARY KEY,
    CollegeName VARCHAR(200) NOT NULL,
    Location VARCHAR(200) NOT NULL,
    EstablishedYear INT NOT NULL,
    Dean_Name VARCHAR(100)
);
CREATE TABLE department (
    DepartmentID INT PRIMARY KEY,
    Department_Name VARCHAR(200) NOT NULL,
    CollegeID INT,
    Head_OF_Dept VARCHAR(200) NOT NULL,
    CONSTRAINT FOREIGN KEY (CollegeID)
        REFERENCES college (CollegeID)
);
CREATE TABLE teacher (
    TeacherID INT PRIMARY KEY,
    Full_Name VARCHAR(200) NOT NULL,
    Email VARCHAR(100),
    Phone_No BIGINT,
    DepartmentID INT,
    HireDate DATE,
    Designation VARCHAR(100),
    CollegeID INT,
    CONSTRAINT FOREIGN KEY (DepartmentID)
        REFERENCES department (DepartmentID),
    CONSTRAINT FOREIGN KEY (CollegeID)
        REFERENCES college (CollegeID)
);

CREATE TABLE course (
    CourseID INT PRIMARY KEY,
    Course_Name VARCHAR(100),
    Credits INT,
    DepartmentID INT,
    TeacherID INT,
    CONSTRAINT FOREIGN KEY (DepartmentID)
        REFERENCES department (DepartmentID),
    CONSTRAINT FOREIGN KEY (TeacherID)
        REFERENCES teacher (TeacherID)
);  

CREATE TABLE student (
    StudentID INT PRIMARY KEY,
    Full_Name VARCHAR(200),
    Email VARCHAR(100),
    Phone BIGINT,
    Gender VARCHAR(20),
    DOB DATE,
    DepartmentID INT,
    CourseID INT,
    EnrollYear INT,
    CONSTRAINT FOREIGN KEY (DepartmentID)
        REFERENCES department (DepartmentID),
    CONSTRAINT FOREIGN KEY (CourseID)
        REFERENCES course(CourseID)
);
INSERT INTO college (CollegeID, CollegeName, Location, EstablishedYear, Dean_Name) VALUES
(1, 'Fowler Institute of Technology', 'Lake Joshuabury', 2000, 'Brian Yang'),
(2, 'Gardner Institute of Technology', 'Johnsonland', 1967, 'Jonathan Johnson'),
(3, 'Gonzalez Institute of Technology', 'Robinsonshire', 1961, 'Sean Blake'),
(4, 'Moore Institute of Technology', 'Petersonberg', 2007, 'Phillip Garcia'),
(5, 'James Institute of Technology', 'Melanieview', 1977, 'Monica Herrera'),
(6, 'Hernandez Institute of Technology', 'East Tammie', 1981, 'Thomas Simmons'),
(7, 'Perry Institute of Technology', 'Lake Christopherfurt', 2004, 'Erik Rios'),
(8, 'Fleming Institute of Technology', 'Port Nicole', 1995, 'Michelle Hayes'),
(9, 'Robinson Institute of Technology', 'Lake Bradfurt', 1982, 'Jennifer Foster'),
(10, 'Pena Institute of Technology', 'Lake Matthew', 2003, 'Jared Palmer'),
(11, 'Jordan Institute of Technology', 'Lake Leah', 1992, 'Gabrielle Richards'),
(12, 'Thornton Institute of Technology', 'Smithberg', 2008, 'Danielle George'),
(13, 'Brown Institute of Technology', 'West Richardmouth', 1999, 'Tina Schultz'),
(14, 'Rios Institute of Technology', 'West Alexanderland', 1987, 'Aaron Warner'),
(15, 'Powell Institute of Technology', 'West Craigchester', 2010, 'Julie Rios'),
(16, 'Casey Institute of Technology', 'East Jason', 2005, 'Michael Park'),
(17, 'Byrd Institute of Technology', 'South Sharonshire', 1990, 'Michele Brooks'),
(18, 'Stone Institute of Technology', 'Racheltown', 1964, 'Steven Malone'),
(19, 'Davis Institute of Technology', 'Lake Kellyfort', 1971, 'Jessica Fleming'),
(20, 'Payne Institute of Technology', 'Lake Amberview', 1989, 'Angela Barnes');

INSERT INTO department (DepartmentID, Department_Name, CollegeID, Head_OF_Dept) VALUES
(1, 'Computer Science', 1, 'Dr. Beth Keller'),
(2, 'Mechanical Engineering', 2, 'Dr. Deborah Brennan'),
(3, 'Electrical Engineering', 3, 'Dr. Tanya Campos'),
(4, 'Civil Engineering', 4, 'Dr. Eric Carney'),
(5, 'Information Technology', 5, 'Dr. Logan Dawson'),
(6, 'Electronics and Comm.', 6, 'Dr. Deborah Hart'),
(7, 'Physics', 7, 'Dr. Elizabeth Goodwin'),
(8, 'Mathematics', 8, 'Dr. Carlos Trevino'),
(9, 'Chemistry', 9, 'Dr. John Winters'),
(10, 'Biotechnology', 10, 'Dr. Amanda Kim'),
(11, 'Data Science', 11, 'Dr. Katie Huffman'),
(12, 'Artificial Intelligence', 12, 'Dr. Lisa Christian'),
(13, 'Cyber Security', 13, 'Dr. George Lane'),
(14, 'Business Analytics', 14, 'Dr. Julia Gonzales'),
(15, 'Finance', 15, 'Dr. Helen Morgan'),
(16, 'Marketing', 16, 'Dr. Bradley Jenkins'),
(17, 'Humanities', 17, 'Dr. Tracy Howell'),
(18, 'Psychology', 18, 'Dr. Donald Wallace'),
(19, 'English Literature', 19, 'Dr. Annette Rhodes'),
(20, 'Sociology', 20, 'Dr. Andrew Hodges');

INSERT INTO teacher (TeacherID, Full_Name, Email, Phone_No, DepartmentID, HireDate, Designation, CollegeID) VALUES
(1, 'James House', 'jhouse@example.com', 9876543210, 1, '2018-07-15', 'Professor', 1),
(2, 'Sarah Moore', 'smoore@example.com', 9876543211, 2, '2019-08-21', 'Associate Professor', 2),
(3, 'Emily Baker', 'ebaker@example.com', 9876543212, 3, '2017-09-25', 'Assistant Professor', 3),
(4, 'Robert Smith', 'rsmith@example.com', 9876543213, 4, '2020-01-05', 'Professor', 4),
(5, 'Sophia Davis', 'sdavis@example.com', 9876543214, 5, '2021-03-14', 'Assistant Professor', 5),
(6, 'Daniel Brown', 'dbrown@example.com', 9876543215, 6, '2016-11-09', 'Associate Professor', 6),
(7, 'Olivia Wilson', 'owilson@example.com', 9876543216, 7, '2015-06-17', 'Professor', 7),
(8, 'William Johnson', 'wjohnson@example.com', 9876543217, 8, '2022-02-28', 'Assistant Professor', 8),
(9, 'Ava Miller', 'amiller@example.com', 9876543218, 9, '2021-07-23', 'Professor', 9),
(10, 'David Martinez', 'dmartinez@example.com', 9876543219, 10, '2020-04-30', 'Assistant Professor', 10),
(11, 'Isabella Garcia', 'igarcia@example.com', 9876543220, 11, '2019-10-20', 'Professor', 11),
(12, 'John Lee', 'jlee@example.com', 9876543221, 12, '2023-01-11', 'Associate Professor', 12),
(13, 'Mia White', 'mwhite@example.com', 9876543222, 13, '2018-03-05', 'Assistant Professor', 13),
(14, 'Lucas Harris', 'lharris@example.com', 9876543223, 14, '2017-12-09', 'Professor', 14),
(15, 'Amelia Clark', 'aclark@example.com', 9876543224, 15, '2016-09-01', 'Assistant Professor', 15),
(16, 'Henry Lewis', 'hlewis@example.com', 9876543225, 16, '2021-05-18', 'Associate Professor', 16),
(17, 'Charlotte Young', 'cyoung@example.com', 9876543226, 17, '2015-08-13', 'Professor', 17),
(18, 'Jack Allen', 'jallen@example.com', 9876543227, 18, '2020-10-06', 'Assistant Professor', 18),
(19, 'Harper King', 'hking@example.com', 9876543228, 19, '2019-02-28', 'Professor', 19),
(20, 'Liam Scott', 'lscott@example.com', 9876543229, 20, '2022-06-30', 'Assistant Professor', 20);

INSERT INTO course (CourseID, Course_Name, Credits, DepartmentID, TeacherID) VALUES
(1, 'Intro to Programming', 4, 1, 1),
(2, 'Thermodynamics', 3, 2, 2),
(3, 'Circuit Theory', 4, 3, 3),
(4, 'Structural Analysis', 3, 4, 4),
(5, 'Database Systems', 4, 1, 5),
(6, 'Digital Electronics', 3, 6, 6),
(7, 'Quantum Mechanics', 4, 7, 7),
(8, 'Linear Algebra', 4, 8, 8),
(9, 'Organic Chemistry', 3, 9, 9),
(10, 'Genetics', 3, 10, 10),
(11, 'Data Analytics', 4, 11, 11),
(12, 'AI Fundamentals', 4, 12, 12),
(13, 'Cyber Law', 3, 13, 13),
(14, 'Statistical Analysis', 3, 14, 14),
(15, 'Financial Management', 4, 15, 15),
(16, 'Branding 101', 3, 16, 16),
(17, 'Indian Philosophy', 3, 17, 17),
(18, 'Child Psychology', 4, 18, 18),
(19, 'Shakespearean Drama', 3, 19, 19),
(20, 'Social Theories', 4, 20, 20);

INSERT INTO student (StudentID, Full_Name, Email, Phone, Gender, DOB, DepartmentID, CourseID, EnrollYear) VALUES
(1, 'Aarav Sharma', 'aarav.sharma01@example.com', 9991000001, 'M', '2001-04-15', 1, 1, 2019),
(2, 'Ishita Roy', 'ishita.roy02@example.com', 9991000002, 'F', '2002-06-10', 2, 2, 2020),
(3, 'Vihaan Mehta', 'vihaan.mehta03@example.com', 9991000003, 'M', '2003-02-28', 3, 3, 2021),
(4, 'Ananya Das', 'ananya.das04@example.com', 9991000004, 'F', '2000-12-01', 4, 4, 2018),
(5, 'Kartik Verma', 'kartik.verma05@example.com', 9991000005, 'M', '2001-05-19', 5, 5, 2019),
(6, 'Riya Sen', 'riya.sen06@example.com', 9991000006, 'F', '2002-07-25', 6, 6, 2020),
(7, 'Yash Thakur', 'yash.thakur07@example.com', 9991000007, 'M', '2001-08-30', 7, 7, 2019),
(8, 'Simran Gupta', 'simran.gupta08@example.com', 9991000008, 'F', '2000-10-10', 8, 8, 2018),
(9, 'Rudra Nair', 'rudra.nair09@example.com', 9991000009, 'M', '2003-01-05', 9, 9, 2021),
(10, 'Meera Mishra', 'meera.mishra10@example.com', 9991000010, 'F', '2002-03-17', 10, 10, 2020),
(11, 'Aryan Joshi', 'aryan.joshi11@example.com', 9991000011, 'M', '2000-11-22', 11, 11, 2018),
(12, 'Nisha Kapoor', 'nisha.kapoor12@example.com', 9991000012, 'F', '2001-06-06', 12, 12, 2019),
(13, 'Raghav Sinha', 'raghav.sinha13@example.com', 9991000013, 'M', '2002-08-12', 13, 13, 2020),
(14, 'Tanya Bhatt', 'tanya.bhatt14@example.com', 9991000014, 'F', '2003-09-30', 14, 14, 2021),
(15, 'Dev Patel', 'dev.patel15@example.com', 9991000015, 'M', '2000-05-27', 15, 15, 2018),
(16, 'Pallavi Reddy', 'pallavi.reddy16@example.com', 9991000016, 'F', '2002-02-14', 16, 16, 2020),
(17, 'Mohit Bansal', 'mohit.bansal17@example.com', 9991000017, 'M', '2001-12-19', 17, 17, 2019),
(18, 'Shruti Yadav', 'shruti.yadav18@example.com', 9991000018, 'F', '2003-04-09', 18, 18, 2021),
(19, 'Nikhil Arora', 'nikhil.arora19@example.com', 9991000019, 'M', '2000-01-11', 19, 19, 2018),
(20, 'Kritika Singh', 'kritika.singh20@example.com', 9991000020, 'F', '2002-10-20', 20, 20, 2020);
INSERT INTO student (StudentID, Full_Name, Email, Phone, Gender, DOB, DepartmentID, CourseID, EnrollYear) VALUES
-- Previous 20 (assumed to already be inserted)
(21, 'Raj Mehra', 'rajmehra21@example.com', 9991234521, 'M', '2002-02-15', 1, 1, 2021),
(22, 'Pooja Shah', 'pooja.shah@example.com', 9991234522, 'F', '2001-07-21', 2, 2, 2020),
(23, 'Vikram Joshi', 'vikramjoshi23@example.com', 9991234523, 'M', '2000-11-10', 3, 3, 2019),
(24, 'Simran Kaur', 'simran.kaur@example.com', 9991234524, 'F', '2002-05-17', 4, 4, 2022),
(25, 'Arjun Reddy', 'arjunreddy25@example.com', 9991234525, 'M', '2001-08-30', 5, 5, 2021),
(26, 'Neha Kapoor', 'nehakapoor26@example.com', 9991234526, 'F', '2003-01-01', 6, 6, 2022),
(27, 'Amit Sen', 'amit.sen@example.com', 9991234527, 'M', '2002-10-11', 7, 7, 2021),
(28, 'Riya Roy', 'riya.roy@example.com', 9991234528, 'F', '2000-04-18', 8, 8, 2020),
(29, 'Kunal Das', 'kunaldas29@example.com', 9991234529, 'M', '2001-09-29', 9, 9, 2021),
(30, 'Anjali Verma', 'anjali30@example.com', 9991234530, 'F', '2002-12-25', 10, 10, 2022),
(31, 'Dev Yadav', 'devyadav31@example.com', 9991234531, 'M', '2000-06-15', 11, 11, 2019),
(32, 'Sneha Jain', 'snehajain32@example.com', 9991234532, 'F', '2001-03-07', 12, 12, 2020),
(33, 'Tarun Paul', 'tarunpaul33@example.com', 9991234533, 'M', '2003-02-28', 13, 13, 2023),
(34, 'Megha Sen', 'meghasen34@example.com', 9991234534, 'F', '2002-07-14', 14, 14, 2022),
(35, 'Rohit Bansal', 'rohitb35@example.com', 9991234535, 'M', '2000-08-08', 15, 15, 2019),
(36, 'Priya Dey', 'priyad36@example.com', 9991234536, 'F', '2001-11-19', 16, 16, 2020),
(37, 'Alok Sharma', 'aloksharma37@example.com', 9991234537, 'M', '2002-10-03', 17, 17, 2021),
(38, 'Nikita Rao', 'nikitarao38@example.com', 9991234538, 'F', '2001-01-26', 18, 18, 2020),
(39, 'Manoj Tiwari', 'manojtiwari39@example.com', 9991234539, 'M', '2000-03-17', 19, 19, 2019),
(40, 'Shalini Singh', 'shalini40@example.com', 9991234540, 'F', '2003-04-09', 20, 20, 2023),
(41, 'Kabir Chauhan', 'kabir41@example.com', 9991234541, 'M', '2001-06-30', 1, 1, 2021),
(42, 'Tanvi Mishra', 'tanvi42@example.com', 9991234542, 'F', '2002-02-14', 2, 2, 2022),
(43, 'Rohan Patil', 'rohan43@example.com', 9991234543, 'M', '2000-09-03', 3, 3, 2020),
(44, 'Isha Mukherjee', 'isha44@example.com', 9991234544, 'F', '2002-11-11', 4, 4, 2021),
(45, 'Yash Garg', 'yashgarg45@example.com', 9991234545, 'M', '2001-07-07', 5, 5, 2020),
(46, 'Tanya Jain', 'tanya46@example.com', 9991234546, 'F', '2003-08-08', 6, 6, 2023),
(47, 'Aditya Goel', 'aditya47@example.com', 9991234547, 'M', '2000-05-05', 7, 7, 2019),
(48, 'Kriti Sharma', 'kriti48@example.com', 9991234548, 'F', '2002-06-06', 8, 8, 2022),
(49, 'Nikhil Rawat', 'nikhil49@example.com', 9991234549, 'M', '2001-10-10', 9, 9, 2021),
(50, 'Sanya Arora', 'sanya50@example.com', 9991234550, 'F', '2000-12-12', 10, 10, 2019);
INSERT INTO student (StudentID, Full_Name, Email, Phone, Gender, DOB, DepartmentID, CourseID, EnrollYear) VALUES
-- Previous 20 (assumed to already be inserted)
(21, 'Raj Mehra', 'rajmehra21@example.com', 9991234521, 'M', '2002-02-15', 1, 1, 2021),
(22, 'Pooja Shah', 'pooja.shah@example.com', 9991234522, 'F', '2001-07-21', 2, 2, 2020),
(23, 'Vikram Joshi', 'vikramjoshi23@example.com', 9991234523, 'M', '2000-11-10', 3, 3, 2019),
(24, 'Simran Kaur', 'simran.kaur@example.com', 9991234524, 'F', '2002-05-17', 4, 4, 2022),
(25, 'Arjun Reddy', 'arjunreddy25@example.com', 9991234525, 'M', '2001-08-30', 5, 5, 2021),
(26, 'Neha Kapoor', 'nehakapoor26@example.com', 9991234526, 'F', '2003-01-01', 6, 6, 2022),
(27, 'Amit Sen', 'amit.sen@example.com', 9991234527, 'M', '2002-10-11', 7, 7, 2021),
(28, 'Riya Roy', 'riya.roy@example.com', 9991234528, 'F', '2000-04-18', 8, 8, 2020),
(29, 'Kunal Das', 'kunaldas29@example.com', 9991234529, 'M', '2001-09-29', 9, 9, 2021),
(30, 'Anjali Verma', 'anjali30@example.com', 9991234530, 'F', '2002-12-25', 10, 10, 2022),
(31, 'Dev Yadav', 'devyadav31@example.com', 9991234531, 'M', '2000-06-15', 11, 11, 2019),
(32, 'Sneha Jain', 'snehajain32@example.com', 9991234532, 'F', '2001-03-07', 12, 12, 2020),
(33, 'Tarun Paul', 'tarunpaul33@example.com', 9991234533, 'M', '2003-02-28', 13, 13, 2023),
(34, 'Megha Sen', 'meghasen34@example.com', 9991234534, 'F', '2002-07-14', 14, 14, 2022),
(35, 'Rohit Bansal', 'rohitb35@example.com', 9991234535, 'M', '2000-08-08', 15, 15, 2019),
(36, 'Priya Dey', 'priyad36@example.com', 9991234536, 'F', '2001-11-19', 16, 16, 2020),
(37, 'Alok Sharma', 'aloksharma37@example.com', 9991234537, 'M', '2002-10-03', 17, 17, 2021),
(38, 'Nikita Rao', 'nikitarao38@example.com', 9991234538, 'F', '2001-01-26', 18, 18, 2020),
(39, 'Manoj Tiwari', 'manojtiwari39@example.com', 9991234539, 'M', '2000-03-17', 19, 19, 2019),
(40, 'Shalini Singh', 'shalini40@example.com', 9991234540, 'F', '2003-04-09', 20, 20, 2023),
(41, 'Kabir Chauhan', 'kabir41@example.com', 9991234541, 'M', '2001-06-30', 1, 1, 2021),
(42, 'Tanvi Mishra', 'tanvi42@example.com', 9991234542, 'F', '2002-02-14', 2, 2, 2022),
(43, 'Rohan Patil', 'rohan43@example.com', 9991234543, 'M', '2000-09-03', 3, 3, 2020),
(44, 'Isha Mukherjee', 'isha44@example.com', 9991234544, 'F', '2002-11-11', 4, 4, 2021),
(45, 'Yash Garg', 'yashgarg45@example.com', 9991234545, 'M', '2001-07-07', 5, 5, 2020),
(46, 'Tanya Jain', 'tanya46@example.com', 9991234546, 'F', '2003-08-08', 6, 6, 2023),
(47, 'Aditya Goel', 'aditya47@example.com', 9991234547, 'M', '2000-05-05', 7, 7, 2019),
(48, 'Kriti Sharma', 'kriti48@example.com', 9991234548, 'F', '2002-06-06', 8, 8, 2022),
(49, 'Nikhil Rawat', 'nikhil49@example.com', 9991234549, 'M', '2001-10-10', 9, 9, 2021),
(50, 'Sanya Arora', 'sanya50@example.com', 9991234550, 'F', '2000-12-12', 10, 10, 2019);

INSERT INTO student (StudentID, Full_Name, Email, Phone, Gender, DOB, DepartmentID, CourseID, EnrollYear) VALUES
-- Previous 20 (assumed to already be inserted)
(21, 'Raj Mehra', 'rajmehra21@example.com', 9991234521, 'M', '2002-02-15', 1, 1, 2021),
(22, 'Pooja Shah', 'pooja.shah@example.com', 9991234522, 'F', '2001-07-21', 2, 2, 2020),
(23, 'Vikram Joshi', 'vikramjoshi23@example.com', 9991234523, 'M', '2000-11-10', 3, 3, 2019),
(24, 'Simran Kaur', 'simran.kaur@example.com', 9991234524, 'F', '2002-05-17', 4, 4, 2022),
(25, 'Arjun Reddy', 'arjunreddy25@example.com', 9991234525, 'M', '2001-08-30', 5, 5, 2021),
(26, 'Neha Kapoor', 'nehakapoor26@example.com', 9991234526, 'F', '2003-01-01', 6, 6, 2022),
(27, 'Amit Sen', 'amit.sen@example.com', 9991234527, 'M', '2002-10-11', 7, 7, 2021),
(28, 'Riya Roy', 'riya.roy@example.com', 9991234528, 'F', '2000-04-18', 8, 8, 2020),
(29, 'Kunal Das', 'kunaldas29@example.com', 9991234529, 'M', '2001-09-29', 9, 9, 2021),
(30, 'Anjali Verma', 'anjali30@example.com', 9991234530, 'F', '2002-12-25', 10, 10, 2022),
(31, 'Dev Yadav', 'devyadav31@example.com', 9991234531, 'M', '2000-06-15', 11, 11, 2019),
(32, 'Sneha Jain', 'snehajain32@example.com', 9991234532, 'F', '2001-03-07', 12, 12, 2020),
(33, 'Tarun Paul', 'tarunpaul33@example.com', 9991234533, 'M', '2003-02-28', 13, 13, 2023),
(34, 'Megha Sen', 'meghasen34@example.com', 9991234534, 'F', '2002-07-14', 14, 14, 2022),
(35, 'Rohit Bansal', 'rohitb35@example.com', 9991234535, 'M', '2000-08-08', 15, 15, 2019),
(36, 'Priya Dey', 'priyad36@example.com', 9991234536, 'F', '2001-11-19', 16, 16, 2020),
(37, 'Alok Sharma', 'aloksharma37@example.com', 9991234537, 'M', '2002-10-03', 17, 17, 2021),
(38, 'Nikita Rao', 'nikitarao38@example.com', 9991234538, 'F', '2001-01-26', 18, 18, 2020),
(39, 'Manoj Tiwari', 'manojtiwari39@example.com', 9991234539, 'M', '2000-03-17', 19, 19, 2019),
(40, 'Shalini Singh', 'shalini40@example.com', 9991234540, 'F', '2003-04-09', 20, 20, 2023),
(41, 'Kabir Chauhan', 'kabir41@example.com', 9991234541, 'M', '2001-06-30', 1, 1, 2021),
(42, 'Tanvi Mishra', 'tanvi42@example.com', 9991234542, 'F', '2002-02-14', 2, 2, 2022),
(43, 'Rohan Patil', 'rohan43@example.com', 9991234543, 'M', '2000-09-03', 3, 3, 2020),
(44, 'Isha Mukherjee', 'isha44@example.com', 9991234544, 'F', '2002-11-11', 4, 4, 2021),
(45, 'Yash Garg', 'yashgarg45@example.com', 9991234545, 'M', '2001-07-07', 5, 5, 2020),
(46, 'Tanya Jain', 'tanya46@example.com', 9991234546, 'F', '2003-08-08', 6, 6, 2023),
(47, 'Aditya Goel', 'aditya47@example.com', 9991234547, 'M', '2000-05-05', 7, 7, 2019),
(48, 'Kriti Sharma', 'kriti48@example.com', 9991234548, 'F', '2002-06-06', 8, 8, 2022),
(49, 'Nikhil Rawat', 'nikhil49@example.com', 9991234549, 'M', '2001-10-10', 9, 9, 2021),
(50, 'Sanya Arora', 'sanya50@example.com', 9991234550, 'F', '2000-12-12', 10, 10, 2019);

-- Display the names and locations of all colleges.
select CollegeName, Location from college; 

-- Show the full name and email of all students enrolled after 2020. 
select Full_Name,Email from student where EnrollYear>2020; 

-- Retrieve all courses with credits greater than or equal to 4.
select * from course where Credits>=4; 

-- List the names and designations of all teachers in the ‘Computer Science’ department.
select t.Full_Name,t.Designation from teacher t left join department d on t.DepartmentID=d.DepartmentID where Department_Name="Computer Science";

-- Display student full name, gender, and DOB where gender is 'F'.
select Full_Name, Gender, DOB from student where Gender='F';

-- List all departments along with their respective college names.
select *,c.CollegeName from department d join college c on d.CollegeID=c.CollegeID;

-- Show student name, course name, and department name using appropriate JOINs.
select s.Full_Name,c.Course_Name,d.Department_Name from student s join course c on s.CourseID=c.CourseID join department d on c.DepartmentID=d.DepartmentID ;

-- Find the names of teachers along with the departments and colleges they belong to.
select t.Full_Name,d.Department_Name,c.CollegeName from teacher t join department d on t.DepartmentID=d.DepartmentID join college c on d.CollegeID=c.CollegeID;  

-- Display all courses and the full names of the teachers who teach them.
select c.Course_Name,t.Full_Name as TeacherALotted from teacher t join course c on t.TeacherID=c.TeacherID; 

--  Get the names of students along with the names of the teachers teaching their course.
SELECT 
    s.Full_Name AS Student,
    t.Full_Name AS Teacher,
    c.Course_Name
FROM
    student s
        JOIN
    course c ON s.CourseID = c.CourseID
        JOIN
    teacher t ON t.TeacherID = c.TeacherID;

--  Count the number of students in each department.
select d.Department_Name,count(*) as Total_Students from student s join department d on s.DepartmentID=d.DepartmentID group by d.Department_Name; 

-- Find the total number of courses offered in each department.
SELECT 
    d.Department_Name, COUNT(c.Course_Name) AS Total_Course
FROM
    course c
        JOIN
    department d ON c.DepartmentID = d.DepartmentID
GROUP BY Department_Name;

-- Show departments having more than 2 teachers.
SELECT 
    d.Department_Name, COUNT(t.Full_Name) AS Total_Teacher
FROM
    department d
        JOIN
    teacher t ON d.DepartmentID = t.DepartmentID
GROUP BY d.Department_Name
HAVING Total_Teacher > 2;

-- Retrieve teachers who were hired between 2018 and 2022.
select * from teacher where HireDate between 2018 and 2022;  

-- List all students whose name starts with 'A'.
select * from student where Full_Name like 'A%';