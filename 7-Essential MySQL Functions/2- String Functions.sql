SELECT LENGTH('Frank');

SELECT UPPER('frank'), LOWER('FRANK');

SELECT LTRIM('   Frank'), RTRIM('Frank   '), TRIM('   Frank   ');

SELECT LEFT('Frank', 3), RIGHT('Frank', 3);

SELECT SUBSTRING('Frank', 2); -- 1: start position
SELECT SUBSTRING('Frank', 2, 2); -- 1: start position, 2: length

SELECT LOCATE('r', 'Frank Tran'); -- first position occur
SELECT LOCATE('R', 'Frank Tran'); -- first position occur
SELECT LOCATE('q', 'Frank Tran'); -- first position occur
SELECT LOCATE('an', 'Frank Tran'); -- first position occur

SELECT REPLACE('Frank', 'an', 'un');

SELECT CONCAT('Frank', ' ', 'Tran') AS full_name;

Search google: mysql string functions