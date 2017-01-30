CREATE TABLE Student (
       student_id integer PRIMARY KEY, 
       name VARCHAR(20),
       majors VARCHAR(20)
);

CREATE TABLE Project (
		project_id integer PRIMARY KEY,
		project_title VARCHAR(40)
);

CREATE TABLE Course (
		course_id integer PRIMARY KEY,
		course_title VARCHAR(20)
);

CREATE TABLE Member (
		project_id integer NOT NULL,
		student_id integer NOT NULL,
		PRIMARY KEY (project_id,student_id),
		FOREIGN KEY (project_id) REFERENCES Project(project_id),
		FOREIGN KEY (student_id) REFERENCES Student(student_id)
);

CREATE TABLE Enrolled (
		student_id integer NOT NULL,
		course_id integer NOT NULL,
		PRIMARY KEY (student_id,course_id),
		FOREIGN KEY (student_id) REFERENCES Student(student_id),
		FOREIGN KEY (course_id) REFERENCES Course(course_id)
);