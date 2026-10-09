USE CollegeDB;
CREATE TABLE Student_Original (
    StudentID NUMBER PRIMARY KEY,
    StudentName VARCHAR2(50),
    CourseName VARCHAR2(50),
    FacultyName VARCHAR2(50),
    DepartmentName VARCHAR2(50)
);
CREATE TABLE Student_1NF (
    StudentID NUMBER PRIMARY KEY,
    StudentName VARCHAR2(50),
    CourseName VARCHAR2(50),
    FacultyName VARCHAR2(50),
    DepartmentName VARCHAR2(50)
);
CREATE TABLE Student_2NF (
    StudentID NUMBER PRIMARY KEY,
    StudentName VARCHAR2(50),
    CourseName VARCHAR2(50)
);

CREATE TABLE Course_2NF (
    CourseName VARCHAR2(50) PRIMARY KEY,
    FacultyName VARCHAR2(50),
    DepartmentName VARCHAR2(50)
);
CREATE TABLE Faculty (
    FacultyID NUMBER PRIMARY KEY,
    FacultyName VARCHAR2(50)
);

CREATE TABLE Department (
    DepartmentID NUMBER PRIMARY KEY,
    DepartmentName VARCHAR2(50),
    FacultyID NUMBER,
    FOREIGN KEY (FacultyID) REFERENCES Faculty(FacultyID)
);

CREATE TABLE Course (
    CourseID NUMBER PRIMARY KEY,
    CourseName VARCHAR2(50),
    DepartmentID NUMBER,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

CREATE TABLE Student (
    StudentID NUMBER PRIMARY KEY,
    StudentName VARCHAR2(50),
    CourseID NUMBER,
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);-- Lab Program 13
-- Normalize the Student table up to Third Normal Form (3NF).
--
-- Write your solution below.
--
-- Functional Dependencies:
-- StudentID -> StudentName, CourseName
-- CourseName -> FacultyName
-- FacultyName -> DepartmentName
--
-- Requirements:
-- 1. Create normalized tables.
-- 2. Define primary keys.
-- 3. Define foreign keys.
-- 4. Insert sample data.
--
-- Do not modify test.sh or .github/workflows/autograding.yml.

USE CollegeDB;

-- Write your 3NF solution here.
