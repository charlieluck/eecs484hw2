CREATE VIEW StudentPairs AS
SELECT DISTINCT S1.sid, S2.sid
FROM STUDENT S1, STUDENT S2, ENROLLED E1, ENROLLED E2
WHERE S1.sid = E1.sid AND S2.sid = E2.sid AND E1.cid = E2.cid AND S1.sid <> S2.sid
	  (WHERE S1.sid, S2.sid NOT IN ( SELECT S3, S4 FROM STUDENT S3, STUDENT S4, MEMBER M3, MEMBER M4
	  								 WHERE S3.sid = M3.sid AND S4.sid = M4.sid AND M3.pid = M4.pid AND S3.sid <> S4.sid)
	  );