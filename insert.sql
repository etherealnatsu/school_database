--DATA:

--School

insert into school (school_id, school_name) values (1, 'engineering school');
insert into school (school_id, school_name) values (2, 'business school');
insert into school (school_id, school_name) values (3, 'arts school');
insert into school (school_id, school_name) values (4, 'science school');
insert into school (school_id, school_name) values (5, 'education school');

--Department

insert into department (department_id, school_id, Dept_Name, Building)
values (101, 1, 'computer science', 'tech hall');

insert into department (department_id, school_id, Dept_Name, Building)
values (102, 1, 'electrical engineering', 'innovation hall');

insert into department (department_id, school_id, Dept_Name, Building)
values (103, 2, 'accounting', 'business center');

insert into department (department_id, school_id, Dept_Name, Building)
values (104, 3, 'graphic design', 'arts building');

insert into department (department_id, school_id, Dept_Name, Building)
values (105, 4, 'biology', 'science hall');



--Role

insert into role (role_id, role_name, role_class, role_salary)
values (1, 'professor', 'faculty', 85000);

insert into role (role_id, role_name, role_class, role_salary)
values (2, 'adjunct', 'faculty', 45000);

insert into role (role_id, role_name, role_class, role_salary)
values (3, 'department chair', 'administration', 105000);

insert into role (role_id, role_name, role_class, role_salary)
values (4, 'registrar', 'administration', 65000);

insert into role (role_id, role_name, role_class, role_salary)
values (5, 'lab assistant', 'support staff', 40000);

--Location

insert into location (Location_id, Building, Floor, Room, Capacity)
values (1, 'tech hall', 1, 101, 30);

insert into location (Location_id, Building, Floor, Room, Capacity)
values (2, 'tech hall', 2, 205, 25);

insert into location (Location_id, Building, Floor, Room, Capacity)
values (3, 'business center', 1, 110, 40);

insert into location (Location_id, Building, Floor, Room, Capacity)
values (4, 'arts building', 3, 301, 20);

insert into location (Location_id, Building, Floor, Room, Capacity)
values (5, 'science hall', 2, 220, 35);


--cohort

insert into cohort (Cohort_ID, CohortName, Start_Term)
values (1, 'freshman 2026', 'fall 2026');

insert into cohort (Cohort_ID, CohortName, Start_Term)
values (2, 'sophomore 2025', 'fall 2025');

insert into cohort (Cohort_ID, CohortName, Start_Term)
values (3, 'junior 2024', 'fall 2024');

insert into cohort (Cohort_ID, CohortName, Start_Term)
values (4, 'senior 2023', 'fall 2023');

insert into cohort (Cohort_ID, CohortName, Start_Term)
values (5, 'graduate 2026', 'spring 2026');

--Parent

INSERT INTO Parent (Parent_ID, Fname, Lname, Phone_number) VALUES (1, 'maria', 'lopez', '5551001234');
INSERT INTO Parent (Parent_ID, Fname, Lname, Phone_number) VALUES (2, 'james', 'carter', '5551005678');
INSERT INTO Parent (Parent_ID, Fname, Lname, Phone_number) VALUES (3, 'linda', 'nguyen', '5551009012');
INSERT INTO Parent (Parent_ID, Fname, Lname, Phone_number) VALUES (4, 'robert', 'brown', '5551003456');
INSERT INTO Parent (Parent_ID, Fname, Lname, Phone_number) VALUES (5, 'angela', 'davis', '5551007890');


--Course

insert into Course (COURSE_ID, Department_ID)
values (1001, 101);

insert into Course (COURSE_ID, Department_ID)
values (1002, 101);

insert into Course (COURSE_ID, Department_ID)
values (1003, 102);

insert into Course (COURSE_ID, Department_ID)
values (1004, 103);

insert into Course (COURSE_ID, Department_ID)
values (1005, 105);

--employee

insert into employee (Employee_ID, Department_ID, Fname, Lname)
values (1, 101, 'john', 'smith');

insert into employee (Employee_ID, Department_ID, Fname, Lname)
values (2, 101, 'emily', 'johnson');

insert into employee (Employee_ID, Department_ID, Fname, Lname)
values (3, 102, 'michael', 'williams');

insert into employee (Employee_ID, Department_ID, Fname, Lname)
values (4, 103, 'sarah', 'miller');

insert into employee (Employee_ID, Department_ID, Fname, Lname)
values (5, 105, 'david', 'wilson');

--Classroom

insert into classroom (Classroom_ID, Location_ID)
values (1, 1);

insert into classroom (Classroom_ID, Location_ID)
values (2, 2);

insert into classroom (Classroom_ID, Location_ID)
values (3, 3);

insert into classroom (Classroom_ID, Location_ID)
values (4, 4);

insert into classroom (Classroom_ID, Location_ID)
values (5, 5);


--Student

insert into student (Student_ID, Cohort_ID, Fname, Lname, date_of_birth)
values (1, 1, 'alex', 'garcia', '2007-03-12');

insert into student (Student_ID, Cohort_ID, Fname, Lname, date_of_birth)
values (2, 1, 'sophia', 'martinez', '2006-07-19');

insert into student (Student_ID, Cohort_ID, Fname, Lname, date_of_birth)
values (3, 2, 'daniel', 'lee', '2005-11-02');

insert into student (Student_ID, Cohort_ID, Fname, Lname, date_of_birth)
values (4, 3, 'olivia', 'taylor', '2004-05-25');

insert into student (Student_ID, Cohort_ID, Fname, Lname, date_of_birth)
values (5, 4, 'ethan', 'anderson', '2003-09-15');

--Section

insert into section
(Section_ID, Course_ID, Employee_ID, Classroom_ID, Term, Section_num, Section_type, Meeting_Times)
values
(1, 1001, 1, 1, 'fall 2026', 'cs101-a', 'lecture', 'mwf 9:00am-10:00am');

insert into section
(Section_ID, Course_ID, Employee_ID, Classroom_ID, Term, Section_num, Section_type, Meeting_Times)
values
(2, 1002, 2, 2, 'fall 2026', 'cs102-b', 'lab', 'tth 11:00am-12:30pm');

insert into section
(Section_ID, Course_ID, Employee_ID, Classroom_ID, Term, Section_num, Section_type, Meeting_Times)
values
(3, 1003, 3, 3, 'fall 2026', 'ee201-a', 'lecture', 'mwf 1:00pm-2:00pm');

insert into section
(Section_ID, Course_ID, Employee_ID, Classroom_ID, Term, Section_num, Section_type, Meeting_Times)
values
(4, 1004, 4, 4, 'fall 2026', 'acc101-c', 'lecture', 'tth 2:00pm-3:30pm');

insert into section
(Section_ID, Course_ID, Employee_ID, Classroom_ID, Term, Section_num, Section_type, Meeting_Times)
values
(5, 1005, 5, 5, 'fall 2026', 'bio110-a', 'lab', 'f 10:00am-1:00pm');

--EmployeeRole

insert into EmployeeRole (Role_ID, Employee_ID, Assigned_Date)
values (1, 1, '2024-08-15');

insert into EmployeeRole (Role_ID, Employee_ID, Assigned_Date)
values (2, 2, '2025-01-10');

insert into EmployeeRole (Role_ID, Employee_ID, Assigned_Date)
values (3, 3, '2023-06-01');

insert into EmployeeRole (Role_ID, Employee_ID, Assigned_Date)
values (4, 4, '2022-09-20');

insert into EmployeeRole (Role_ID, Employee_ID, Assigned_Date)
values (5, 5, '2025-02-14');

--ParentStudent

insert into ParentStudent (Parent_ID, Student_ID, Relation_To_Student)
values (1, 1, 'mother');

insert into ParentStudent (Parent_ID, Student_ID, Relation_To_Student)
values (2, 2, 'father');

insert into ParentStudent (Parent_ID, Student_ID, Relation_To_Student)
values (3, 3, 'mother');

insert into ParentStudent (Parent_ID, Student_ID, Relation_To_Student)
values (4, 4, 'father');

insert into ParentStudent (Parent_ID, Student_ID, Relation_To_Student)
values (5, 5, 'guardian');

--Enrollment

insert into Enrollment (Student_ID, Section_ID, Enrollment_Date)
values (1, 1, '2026-08-25');

insert into Enrollment (Student_ID, Section_ID, Enrollment_Date)
values (2, 2, '2026-08-25');

insert into Enrollment (Student_ID, Section_ID, Enrollment_Date)
values (3, 3, '2026-08-25');

insert into Enrollment (Student_ID, Section_ID, Enrollment_Date)
values (4, 4, '2026-08-25');

insert into Enrollment (Student_ID, Section_ID, Enrollment_Date)
values (5, 5, '2026-08-25');
 
