CREATE TABLE School(
    School_ID INT NOT NULL,
    School_Name VARCHAR(30),
    CONSTRAINT pk_school PRIMARY KEY (School_ID)
);
CREATE TABLE Department (
    Department_ID INT NOT NULL,
    School_ID INT NOT NULL,
    Dept_Name VARCHAR(30),
    Department_Building VARCHAR(30),
    CONSTRAINT pk_Department PRIMARY KEY (Department_ID),
     CONSTRAINT fk_dept_school FOREIGN KEY (School_ID) REFERENCES School(School_ID)  
);
CREATE TABLE Role (
    Role_ID INT NOT NULL,
    Role_Name VARCHAR(30),
    Role_Class VARCHAR(30),
    Role_Salary DECIMAL (10,2),
    CONSTRAINT pk_Role PRIMARY KEY (Role_ID)
);
CREATE TABLE Location (
    Location_ID INT NOT NULL,
    Building VARCHAR(30),
    Floor INT NOT NULL,
    Room INT NOT NULL,
    Capacity INT NOT NULL,
    CONSTRAINT pk_Location PRIMARY KEY (Location_ID)
);
CREATE TABLE Cohort(
    Cohort_ID INT NOT NULL,
    CohortName VARCHAR(30),
    Start_Term VARCHAR(30),
    CONSTRAINT pk_COHORT PRIMARY KEY (Cohort_ID)
);
 
CREATE TABLE Parent(
    Parent_ID INT NOT NULL,
    Fname VARCHAR(30),
    Lname VARCHAR(30),
    Phone_number VARCHAR(30),
    CONSTRAINT pk_PARENT PRIMARY KEY (Parent_ID)
);
CREATE TABLE Course (
    COURSE_ID INT NOT NULL,
    Department_ID INT NOT NULL,
    CONSTRAINT pk_COURSE PRIMARY KEY (COURSE_ID),
    CONSTRAINT fk_course_dept FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
);
CREATE TABLE Employee (
    EMPLOYEE_ID INT NOT NULL,
    Department_ID INT NOT NULL,
    MANAGER_ID INT,
    EMP_FNAME VARCHAR(30),
    EMP_LNAME VARCHAR(30),
    CONSTRAINT pk_employee PRIMARY KEY (EMPLOYEE_ID),
    CONSTRAINT fk_employee_manager FOREIGN KEY (MANAGER_ID) REFERENCES Employee (EMPLOYEE_ID),
    CONSTRAINT fk_dept_employee FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
);
CREATE TABLE Classroom (
    Classroom_ID INT NOT NULL,
    Location_ID INT NOT NULL,
    CONSTRAINT pk_classroom PRIMARY KEY (Classroom_ID),
    CONSTRAINT fk_class_location FOREIGN KEY (Location_ID) REFERENCES Location(Location_ID)
);
CREATE TABLE Student (
    Student_ID INT NOT NULL,
    Cohort_ID INT NOT NULL,
    Fname VARCHAR(30),
    Lname VARCHAR(30),
    DATE_OF_BIRTH  DATE,
    CONSTRAINT pk_student PRIMARY KEY (Student_ID),
    CONSTRAINT fk_cohort_student FOREIGN KEY (Cohort_ID) REFERENCES Cohort(Cohort_ID)
);
CREATE TABLE Section (
    Section_ID INT NOT NULL,
    Course_ID INT NOT NULL,
    Employee_ID INT NOT NULL,
    Classroom_ID INT NOT NULL,
    Term VARCHAR(30),
    Section_num VARCHAR(30),
    Section_type VARCHAR(30),
    Meeting_Times VARCHAR(50),
    CONSTRAINT pk_section PRIMARY KEY (Section_ID),
    CONSTRAINT fk_course_section FOREIGN KEY (Course_ID) REFERENCES   Course(Course_ID),
    CONSTRAINT fk_empl_section FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID),
    CONSTRAINT fk_class_section FOREIGN KEY (Classroom_ID) REFERENCES Classroom(Classroom_ID)
);
CREATE TABLE Employee_Role (
    Role_ID INT NOT NULL,
    Employee_ID INT NOT NULL,
    Assigned_Date DATE,  
    CONSTRAINT pk_employee_role PRIMARY KEY (EMPLOYEE_ID, ROLE_ID),
    CONSTRAINT fk_employeeRole FOREIGN KEY (Role_ID) REFERENCES Role(ROLE_ID),
    CONSTRAINT fk_employee_staff_id FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)
);
CREATE TABLE Parent_Student (
    Parent_ID INT NOT NULL,
    Student_ID INT NOT NULL,
    RELATION_TO_STUDENT VARCHAR(30),
    CONSTRAINT pk_Parent_Student PRIMARY KEY (Parent_ID, Student_ID),
    CONSTRAINT fk_students_parent FOREIGN KEY (Parent_ID) REFERENCES Parent(Parent_ID),
    CONSTRAINT fk_students_id FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID)
);
CREATE TABLE Enrollment (
    Student_ID INT NOT NULL,
    Section_ID INT NOT NULL,
    ENROLLMENT_DATE DATE,
    CONSTRAINT pk_enrollment PRIMARY KEY (Student_ID, Section_ID),
    CONSTRAINT fk_students_enrollment FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
    CONSTRAINT fk_enrollment_sections FOREIGN KEY (Section_ID) REFERENCES Section(Section_ID)
);
