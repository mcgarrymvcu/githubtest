CREATE DATABASE IF NOT EXISTS CourseDB;
USE CourseDB;

DROP TABLE IF EXISTS Enrollment;
DROP TABLE IF EXISTS Student; 
DROP TABLE IF EXISTS Course_session;
DROP TABLE IF EXISTS Prerequisites;
DROP TABLE IF EXISTS Course;
DROP TABLE IF EXISTS Instructor; 
DROP TABLE IF EXISTS Department;

CREATE TABLE Course (
    Course_id char(8)  NOT NULL,
    Department_id char(4)  NOT NULL,
    Course_name char(25)  NOT NULL,
    Credit_hours int  NOT NULL,
    REAL_designation char(1)  NOT NULL,
    CONSTRAINT Course_pk PRIMARY KEY (Course_id)
);

-- Table: Course_session
CREATE TABLE Course_session (
    Course_id char(8)  NOT NULL,
    Section_id char(3)  NOT NULL,
    Instructor_id char(10)  NOT NULL,
    Modality_flag char(1)  NOT NULL,
    Max_students int  NOT NULL,
    CONSTRAINT Course_session_pk PRIMARY KEY (Course_id,Section_id)
);

-- Table: Department
CREATE TABLE Department (
    Department_id char(4)  NOT NULL,
    Department_name char(25)  NOT NULL,
    CONSTRAINT Department_pk PRIMARY KEY (Department_id)
);

-- Table: Enrollment
CREATE TABLE Enrollment (
    Course_id char(8)  NOT NULL,
    Section_id char(3)  NOT NULL,
    Student_id char(10)  NOT NULL,
    CONSTRAINT Enrollment_pk PRIMARY KEY (Course_id,Section_id,Student_id)
);

-- Table: Instructor
CREATE TABLE Instructor (
    Instructor_id char(10)  NOT NULL,
    Instructor_first_name char(15)  NOT NULL,
    Instructor_last_name char(15)  NOT NULL,
    Department_id char(4)  NOT NULL,
    CONSTRAINT Instructor_pk PRIMARY KEY (Instructor_id)
);

-- Table: Prerequisites
CREATE TABLE Prerequisites (
    Course_id char(8)  NOT NULL,
    Prereq_course_id char(8)  NOT NULL,
    CONSTRAINT Prerequisites_pk PRIMARY KEY (Course_id,Prereq_course_id)
);

-- Table: Student
CREATE TABLE Student (
    Student_id char(9)  NOT NULL,
    Student_first_name char(15)  NOT NULL,
    Student_last_name char(15)  NOT NULL,
    Student_country char(5)  NOT NULL,
    Student_resident_flag char(1)  NOT NULL,
    CONSTRAINT Student_pk PRIMARY KEY (Student_id)
);

-- foreign keys
-- Reference: Course_Department (table: Course)
ALTER TABLE Course ADD CONSTRAINT Course_Department FOREIGN KEY Course_Department (Department_id)
    REFERENCES Department (Department_id);

-- Reference: Course_session_Course (table: Course_session)
ALTER TABLE Course_session ADD CONSTRAINT Course_session_Course FOREIGN KEY Course_session_Course (Course_id)
    REFERENCES Course (Course_id);

-- Reference: Course_session_Instructor (table: Course_session)
ALTER TABLE Course_session ADD CONSTRAINT Course_session_Instructor FOREIGN KEY Course_session_Instructor (Instructor_id)
    REFERENCES Instructor (Instructor_id);

-- Reference: Enrollment_Course_session (table: Enrollment)
ALTER TABLE Enrollment ADD CONSTRAINT Enrollment_Course_session FOREIGN KEY Enrollment_Course_session (Course_id, Section_id)
    REFERENCES Course_session (Course_id,Section_id);

-- Reference: Prerequisites_Course (table: Prerequisites)
ALTER TABLE Prerequisites ADD CONSTRAINT Prerequisites_Course FOREIGN KEY Prerequisites_Course (Course_id)
    REFERENCES Course (Course_id);

-- Reference: Student_Enrollment (table: Enrollment)
ALTER TABLE Enrollment ADD CONSTRAINT Student_Enrollment FOREIGN KEY Student_Enrollment (Student_id)
    REFERENCES Student (Student_id);

-- End of file.

