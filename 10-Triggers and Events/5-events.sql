SHOW VARIABLES LIKE 'event%';
SET GLOBAL event_scheduler = OFF;

DROP EVENT IF EXISTS yearly_delete_stale_audit_rows

DELIMITER $$
CREATE EVENT yearly_delete_stale_audit_rows
ON SCHEDULE 
    -- AT '2020-04-17'
    -- EVERY 1 YEAR [STARTS '2020-01-01' ENDS '2030-01-01']
    EVERY 1 YEAR STARTS '2020-01-01' ENDS '2030-01-01'
DO BEGIN
    DELETE FROM payments_audit
    WHERE action_date < DATE_SUB(NOW(), INTERVAL 1 YEAR);
END $$

DELIMITER ;