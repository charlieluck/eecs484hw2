CREATE TABLE Student (
       sid integer PRIMARY KEY, 
       name VARCHAR(20),
       majors VARCHAR(20)
);

CREATE TABLE Project (
		pid integer PRIMARY KEY,
		ptitle VARCHAR(40)
);

CREATE TABLE Course (
		cid integer PRIMARY KEY,
		title VARCHAR(20)
);

CREATE TABLE Member (
		pid integer NOT NULL,
		sid integer NOT NULL,
		PRIMARY KEY (pid,sid),
		FOREIGN KEY (pid) REFERENCES Project(pid),
		FOREIGN KEY (sid) REFERENCES Student(sid)
);

CREATE TABLE Enrolled (
		sid integer NOT NULL,
		cid integer NOT NULL,
		PRIMARY KEY (sid,cid),
		FOREIGN KEY (sid) REFERENCES Student(sid),
		FOREIGN KEY (cid) REFERENCES Course(cid)
);

INSERT INTO Student VALUES (1,'A','');
INSERT INTO Student VALUES (2,'B','');
INSERT INTO Student VALUES (3,'C','');
INSERT INTO Student VALUES (4,'D','');
INSERT INTO Student VALUES (5,'E','');
INSERT INTO Student VALUES (6,'F','');
INSERT INTO Student VALUES (7,'G','');
INSERT INTO Student VALUES (8,'H','');
INSERT INTO Student VALUES (9,'I','');
INSERT INTO Student VALUES (10,'J','');

INSERT INTO Course VALUES (280,'EECS280');
INSERT INTO Course VALUES (281,'EECS281');
INSERT INTO Course VALUES (482,'EECS482');
INSERT INTO Course VALUES (484,'EECS484');
INSERT INTO Course VALUES (485,'EECS485');
INSERT INTO Course VALUES (486,'EECS486');