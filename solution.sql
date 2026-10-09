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
);

USE CollegeDB;
