SELECT IFNULL(NULL, 'Unknown'), IFNULL('Frank', 'Unknown');

SELECT COALESCE(NULL, 'Frank'), COALESCE(NULL, NULL, 'Frank'), COALESCE(NULL, 'Frank', 'Tran');