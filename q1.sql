(
SELECT S.sid FROM Student S, Enrolled E, Course C 
WHERE S.sid = E.sid AND E.cid = C.cid 
AND C.title = 'EECS484'
INTERSECT 
SELECT S.sid FROM Student S, Enrolled E, Course C 
WHERE S.sid = E.sid AND E.cid = C.cid 
AND C.title = 'EECS485'
)
UNION
(
SELECT S.sid FROM Student S, Enrolled E, Course C 
WHERE S.sid = E.sid AND E.cid = C.cid 
AND C.title = 'EECS482'
INTERSECT 
SELECT S.sid FROM Student S, Enrolled E, Course C 
WHERE S.sid = E.sid AND E.cid = C.cid 
AND C.title = 'EECS486'
)
UNION
SELECT S.sid FROM Student S, Enrolled E, Course C 
WHERE S.sid = E.sid AND E.cid = C.cid 
AND C.title = 'EECS281';
