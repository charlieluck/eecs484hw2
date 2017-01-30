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
INSERT INTO Student VALUES (11,'K','');
INSERT INTO Student VALUES (12,'L','');
INSERT INTO Student VALUES (13,'M','');



INSERT INTO Course VALUES (280,'EECS280');
INSERT INTO Course VALUES (281,'EECS281');
INSERT INTO Course VALUES (482,'EECS482');
INSERT INTO Course VALUES (484,'EECS484');
INSERT INTO Course VALUES (485,'EECS485');
INSERT INTO Course VALUES (486,'EECS486');

INSERT INTO Enrolled VALUES(1,482); 
INSERT INTO Enrolled VALUES(1,486);
--take one
INSERT INTO Enrolled VALUES(2,482); 
--take none
INSERT INTO Enrolled VALUES(3,484); 
INSERT INTO Enrolled VALUES(3,485);
--take one
INSERT INTO Enrolled VALUES(4,482); 
INSERT INTO Enrolled VALUES(4,484);
INSERT INTO Enrolled VALUES(4,485);
--take none
INSERT INTO Enrolled VALUES(5,281); 
--take one
INSERT INTO Enrolled VALUES(6,484); 
--take none
INSERT INTO Enrolled VALUES(7,484); 
INSERT INTO Enrolled VALUES(7,486);
--take none
INSERT INTO Enrolled VALUES(8,482); 
INSERT INTO Enrolled VALUES(8,485);
--take none
INSERT INTO Enrolled VALUES(9,281); 
INSERT INTO Enrolled VALUES(9,482);
INSERT INTO Enrolled VALUES(9,485);
--take two
INSERT INTO Enrolled VALUES(10,281); 
INSERT INTO Enrolled VALUES(10,482);
INSERT INTO Enrolled VALUES(10,484);
INSERT INTO Enrolled VALUES(10,485);
INSERT INTO Enrolled VALUES(10,486);
--take three
-- should return 1,3,5,9,10
