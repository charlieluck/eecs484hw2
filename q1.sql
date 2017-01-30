(SELECT S.sid FROM Student S, Enrolled E, Course C 
WHERE S.sid = E.sid AND E.cid = C.cid 
AND C.titie = 'EECS484'
INTERSECT 
SELECT S.sid FROM Student S, Enrolled E, Course C 
WHERE S.sid = E.sid AND E.cid = C.cid 
AND C.titie = 'EECS485')
UNION
(SELECT S.sid FROM Student S, Enrolled E, Course C 
WHERE S.sid = E.sid AND E.cid = C.cid 
AND C.titie = 'EECS482'
INTERSECT 
SELECT S.sid FROM Student S, Enrolled E, Course C 
WHERE S.sid = E.sid AND E.cid = C.cid 
AND C.titie = 'EECS486')
UNION
SELECT S.sid FROM Student S, Enrolled E, Course C 
WHERE S.sid = E.sid AND E.cid = C.cid 
AND C.titie = 'EECS281';
