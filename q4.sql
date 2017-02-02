CREATE VIEW StudentPairs AS
SELECT DISTINCT S1.sid AS sid1, S2.sid AS sid2
FROM STUDENT S1, STUDENT S2, ENROLLED E1, ENROLLED E2
WHERE NOT EXISTS (SELECT * FROM MEMBER M1, MEMBER M2 
  			WHERE S1.sid = M1.sid AND S2.sid = M2.sid 
  			AND M1.pid = M2.pid) AND 
		S1.sid = E1.sid AND S2.sid = E2.sid AND E1.cid = E2.cid AND S1.sid < S2.sid;
--ORDER BY sid1, sid2;

--DROP VIEW StudentPairs;