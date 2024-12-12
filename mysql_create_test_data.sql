INSERT INTO Department (Department_id, Department_name) VALUES ('INFO', 'Information Systems');
INSERT INTO Department (Department_id, Department_name) VALUES ('MKTG', 'Marketing');
INSERT INTO Department (Department_id, Department_name) VALUES ('ACCT', 'Accounting');

INSERT INTO Instructor (Instructor_id, Instructor_first_name, Instructor_last_name, Department_id) VALUES ('INSTRUCT72', 'Michael', 'McGarry', 'INFO');
INSERT INTO Instructor (Instructor_id, Instructor_first_name, Instructor_last_name, Department_id) VALUES ('INSTRUCT70', 'Peter', 'Campbell', 'INFO');
INSERT INTO Instructor (Instructor_id, Instructor_first_name, Instructor_last_name, Department_id) VALUES ('INSTRUCT71', 'Robin', 'Rowell', 'MKTG');

INSERT INTO Student (Student_id, Student_first_name, Student_last_name, Student_country, Student_resident_flag) VALUES ('STUDENT72', 'Robert', 'Young', 'USA', 'N');
INSERT INTO Student (Student_id, Student_first_name, Student_last_name, Student_country, Student_resident_flag) VALUES ('STUDENT70', 'Michelle', 'Widecan', 'USA', 'Y');
INSERT INTO Student (Student_id, Student_first_name, Student_last_name, Student_country, Student_resident_flag) VALUES ('STUDENT71', 'William', 'Flaherty', 'Ireland', 'N');

INSERT INTO Course (Course_id, Department_id, Course_name, Credit_hours, REAL_designation) VALUES ('INFO 300', 'INFO', 'Intro to Infra', 3, 'Y') ;
INSERT INTO Course (Course_id, Department_id, Course_name, Credit_hours, REAL_designation) VALUES ('INFO 465', 'INFO', 'Projects in IS', 3, 'Y') ;
INSERT INTO Course (Course_id, Department_id, Course_name, Credit_hours, REAL_designation) VALUES ('INFO 450', 'INFO', 'Programming for BA', 3, 'N') ;

INSERT INTO Prerequisites (Course_id, Prereq_course_id) VALUES ('INFO 450', 'INFO 300');
INSERT INTO Prerequisites (Course_id, Prereq_course_id) VALUES ('INFO 465', 'INFO 300');

INSERT INTO Course_session (Course_id, Section_id, Instructor_id, Modality_flag, Max_students) VALUES ('INFO 300', '901', 'INSTRUCT72', 'O', 20);
INSERT INTO Course_session (Course_id, Section_id, Instructor_id, Modality_flag, Max_students) VALUES ('INFO 465', '002', 'INSTRUCT72', 'O', 32);

INSERT INTO Enrollment (Course_id, Section_id, Student_id) VALUES ('INFO 300', '901', 'STUDENT72');
INSERT INTO Enrollment (Course_id, Section_id, Student_id) VALUES ('INFO 300', '901', 'STUDENT70');
INSERT INTO Enrollment (Course_id, Section_id, Student_id) VALUES ('INFO 300', '901', 'STUDENT71');