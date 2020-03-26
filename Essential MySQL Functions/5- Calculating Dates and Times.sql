SELECT DATE_ADD(NOW(), INTERVAL 1 YEAR), DATE_ADD(NOW(), INTERVAL 1 MONTH), DATE_ADD(NOW(), INTERVAL 1 DAY),
DATE_ADD(NOW(), INTERVAL 1 HOUR), DATE_ADD(NOW(), INTERVAL 1 MINUTE), DATE_ADD(NOW(), INTERVAL 1 SECOND);

SELECT DATE_ADD(NOW(), INTERVAL -1 YEAR), DATE_ADD(NOW(), INTERVAL -1 MONTH), DATE_ADD(NOW(), INTERVAL -1 DAY),
DATE_ADD(NOW(), INTERVAL -1 HOUR), DATE_ADD(NOW(), INTERVAL -1 MINUTE), DATE_ADD(NOW(), INTERVAL -1 SECOND);
SELECT DATE_SUB(NOW(), INTERVAL 1 YEAR), DATE_SUB(NOW(), INTERVAL 1 MONTH), DATE_SUB(NOW(), INTERVAL 1 DAY),
DATE_SUB(NOW(), INTERVAL 1 HOUR), DATE_SUB(NOW(), INTERVAL 1 MINUTE), DATE_SUB(NOW(), INTERVAL 1 SECOND);

SELECT DATEDIFF('2020-03-26 03:35', '2020-04-30 23:40'), DATEDIFF('2020-04-30 03:35', '2020-03-26 23:40');

SELECT TIME_TO_SEC('09:00') - TIME_TO_SEC('09:05');