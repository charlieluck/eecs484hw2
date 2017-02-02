--CREATE VIEW STUDENT_NUM AS
--SELECT COUNT (*) 
--FROM STUDENT S, ENROLLED E, COURSE C
--WHERE S.sid = E.sid AND E.cid = C.cid AND S.major <> 'CS';
-- students without any major ?

--CREATE VIEW NON_HEAVILY_CS_COURSE AS
--SELECT *
--FROM COURSE C
--WHERE STUDENT_NUM < 100;



--SELECT DISTINCT S.sid, S.name
--FROM STUDENT S, NON_HEAVILY_CS_COURSE N, ENROLLED E
--WHERE S.sid = E.sid AND E.cid = N.cid AND S.major = 'CS'
--ORDER BY S.name DESC;

CREATE VIEW Non_heavy_cs_course as 
SELECT DISTINCT E.cid 
FROM Student S, Enrolled E
WHERE S.sid = E.sid AND S.sid NOT IN
(SELECT DISTINCT E1.cid
FROM Student S1, Enrolled E1
WHERE S1.sid = E.sid AND S.major = 'CS'
)
GROUP BY E.cid
HAVING COUNT(*) > 2;

SELECT * FROM Non_heavy_cs_course;

SELECT DISTINCT S.sid,S.name
FROM Student S, Enrolled E, Non_heavy_cs_course N 
WHERE S.sid = E.sid AND E.cid = N.cid 
AND S.major ='CS'
ORDER BY S.name DESC;