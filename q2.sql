SELECT A.sid
FROM STUDENT A, STUDENT B, MEMBER MA, MEMBER MB, 
	 COURSE C1, COURSE C2, COURSE C3,
	 ENROLLED E1, ENROLLED E2, ENROLLED E3 
WHERE A.sid <> B.sid AND A.sid = MA.sid AND B.sid = MB.sid AND MA.pid = MB.pid AND
	  B.sid = E1.sid AND E1.cid = C1.cid AND (C1.title = 'EECS482' OR C1.title = 'EECS483') AND
	  B.sid = E2.sid AND E2.cid = C2.cid AND (C2.title = 'EECS484' OR C2.title = 'EECS485') AND
	  B.sid = E3.sid AND E3.cid = C3.cid AND C3.title = 'EECS280';