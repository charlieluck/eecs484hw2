CREATE TABLE Student (
       sid integer PRIMARY KEY, 
       name VARCHAR(20),
       major VARCHAR(20)
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

INSERT INTO Project VALUES (1,'P1');
INSERT INTO Project VALUES (2,'P2');
INSERT INTO Project VALUES (3,'P3');
INSERT INTO Project VALUES (4,'P4');
INSERT INTO Project VALUES (5,'P5');
INSERT INTO Project VALUES (6,'P6');
INSERT INTO Project VALUES (7,'P7');
INSERT INTO Project VALUES (8,'P8');
INSERT INTO Project VALUES (9,'P9');
INSERT INTO Project VALUES (10,'P10');

--INSERT INTO Member VALUES (1,1);
--Project1
--INSERT INTO Member VALUES (2,2);
--Project2 
--INSERT INTO Member VALUES (3,2);
--INSERT INTO Member VALUES (3,4);
--Project3
--INSERT INTO Member VALUES (4,3);
--INSERT INTO Member VALUES (4,10);
--Project4
--INSERT INTO Member VALUES (5,10);
--INSERT INTO Member VALUES (5,9);
--Project5
--INSERT INTO Member VALUES (6,3);
--INSERT INTO Member VALUES (6,7);
--Project6
--INSERT INTO Member VALUES (7,11);
--Project7

INSERT INTO Course VALUES (280,'EECS280');
INSERT INTO Course VALUES (281,'EECS281');
INSERT INTO Course VALUES (482,'EECS482');
INSERT INTO Course VALUES (483,'EECS483');
INSERT INTO Course VALUES (484,'EECS484');
INSERT INTO Course VALUES (485,'EECS485');
INSERT INTO Course VALUES (486,'EECS486');

INSERT INTO Enrolled VALUES (1,482); 
INSERT INTO Enrolled VALUES (1,486);
--take one
INSERT INTO Enrolled VALUES (2,482); 
--take none
INSERT INTO Enrolled VALUES (3,484); 
INSERT INTO Enrolled VALUES (3,485);
--take one
INSERT INTO Enrolled VALUES (4,482); 
INSERT INTO Enrolled VALUES (4,484);
INSERT INTO Enrolled VALUES (4,485);
INSERT INTO Enrolled VALUES (4,280);
--take none 
--good partner
INSERT INTO Enrolled VALUES (5,281); 
--take one
INSERT INTO Enrolled VALUES (6,484); 
--take none
INSERT INTO Enrolled VALUES (7,484); 
INSERT INTO Enrolled VALUES (7,486);
--take none
INSERT INTO Enrolled VALUES (8,482); 
INSERT INTO Enrolled VALUES (8,485);
--take none
INSERT INTO Enrolled VALUES (9,280);
INSERT INTO Enrolled VALUES (9,281); 
INSERT INTO Enrolled VALUES (9,482);
INSERT INTO Enrolled VALUES (9,484);
--take two
--good partner
INSERT INTO Enrolled VALUES (10,280); 
INSERT INTO Enrolled VALUES (10,281); 
INSERT INTO Enrolled VALUES (10,482);
INSERT INTO Enrolled VALUES (10,483);
INSERT INTO Enrolled VALUES (10,484);
INSERT INTO Enrolled VALUES (10,485);
INSERT INTO Enrolled VALUES (10,486);
--take three
-- q1 should return 1,3,4,5,9,10,11

INSERT INTO Enrolled VALUES (11,280); 
INSERT INTO Enrolled VALUES (11,281); 
INSERT INTO Enrolled VALUES (11,482);
INSERT INTO Enrolled VALUES (11,483);
INSERT INTO Enrolled VALUES (11,484);
INSERT INTO Enrolled VALUES (11,485);
INSERT INTO Enrolled VALUES (11,486);


--good partners are 4,9,10,11
-- q2 should return 2,3,9,10

INSERT INTO Member VALUES (1,2);
INSERT INTO Member VALUES (1,10);
INSERT INTO Member VALUES (2,3);
INSERT INTO Member VALUES (3,4);
-- q4 student 2,4,8,9,10 takes 482
-- 2,4 in different project, 8 no project, 9 no project, 2,10 in same project
-- student 3,5,6 doesn't take same course as 2
-- 2,3 in different project, 5 no project, 6 no project
--q4 should return (2,4) (2,8) (8,9) ...