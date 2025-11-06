-- AIM 3.3: Implementation of Nested and Correlated Subqueries
SELECT s.sname FROM sailors s WHERE s.sid IN(SELECT r.sid FROM reserves r WHERE r.bid=103);
SELECT s.sname FROM sailors s WHERE s.sid NOT IN(SELECT r.sid FROM reserves r WHERE r.bid=103);
SELECT s.sid FROM sailors s WHERE s.rating>=ALL(SELECT s1.rating FROM sailors s1);
SELECT s.sid FROM sailors s WHERE s.rating>ANY(SELECT s1.rating FROM sailors s1 WHERE s1.sname='Andy');
SELECT s.sname FROM sailors s WHERE EXISTS(SELECT * FROM reserves r WHERE s.sid=r.sid AND r.bid=103);
SELECT s.sname FROM sailors s WHERE NOT EXISTS(SELECT * FROM reserves r WHERE s.sid=r.sid AND r.bid=103);