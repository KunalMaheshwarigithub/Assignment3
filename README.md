# Assignment3
This directory contains SQL scripts to design and populate a relational database for a university system using MySQL. The project demonstrates schema design, normalization, and practical use of DQL commands.

#  University DBMS Project (MySQL)

This project implements a **University Database Management System** using **MySQL**. It models the academic structure of a university including multiple colleges, departments, teachers, courses, and students. The project demonstrates how to design relational databases, establish foreign key relationships, and perform meaningful data queries to manage and analyze institutional data.

---

##  Directory Overview

This repository contains:

- SQL File named Uniersity_Database
- Screenshot of the reverse engineering


---

##  Database Structure

The database `university_data` consists of the following tables:

### 1. `college`
Stores college-level details including:
- College ID, Name, Location
- Year of Establishment
- Dean's Name

### 2. `department`
Linked to a college and stores:
- Department ID, Name
- College ID (Foreign Key)
- Head of Department

### 3. `teacher`
Represents faculty members with:
- Teacher ID, Name, Email, Phone
- Hire Date, Designation
- Associated Department and College

### 4. `course`
Defines courses offered by departments:
- Course ID, Name, Credit Value
- Associated Department and Teacher

### 5. `student`
Holds student records including:
- Student ID, Name, Email, Phone, Gender, DOB
- Department and Course Enrolled
- Enrollment Year

All tables are normalized and linked via **primary and foreign keys** to ensure referential integrity.

---

##  Sample Data

The project contains over:

-  20 Colleges  
-  20 Departments  
-  20 Teachers  
-  20 Courses  
-  50+ Students  

Each table is populated with sample data to simulate a real-world academic environment.

---

##  SQL Query Descriptions

The project includes a variety of SQL queries such as:

- Displaying college names and locations  
- Retrieving students enrolled after 2020  
- Listing courses with 4 or more credits  
- Joining tables to display teacher, department, and college info  
- Showing student details along with their course and teacher  
- Counting students per department  
- Counting courses per department  
- Filtering teachers by hire date range  
- Finding names starting with a specific letter  
- Aggregating departments with more than two teachers  

These queries demonstrate the use of `SELECT`, `JOIN`, `WHERE`, `GROUP BY`, `HAVING`, `LIKE`, and date-based filtering.

---

## Tech Stack

- **Database Engine**: MySQL  
- **Tool Used**: MySQL Workbench / DB Fiddle  
- **SQL Features Used**:  
  - DDL (Data Definition Language)  
  - DML (Data Manipulation Language)  
  - DQL (Data Query Language)

---

## How to Use

1. Clone or download this repository.
2. Open the SQL script in **MySQL Workbench** or any SQL IDE.
3. Execute the database creation and table definition statements.
4. Insert the sample data.
5. Run the queries provided to explore and analyze the database.

---

## Learning Outcomes

- Understanding of relational database design
- Hands-on experience with SQL schema creation
- Practical application of joins, filtering, aggregation, and foreign keys
- Building real-world academic database systems

---

##  Contact

Created by **Kunal Maheshwari** 
Asipiring Data Engineering | SQL Enthusiast
For any questions or collaborations, feel free to connect via GitHub or email.
Email: kunalmaheshwari912004@gmail.com
---
