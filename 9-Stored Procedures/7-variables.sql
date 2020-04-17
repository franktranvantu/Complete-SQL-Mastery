DROP PROCEDURE IF EXISTS get_risk_factor;

DELIMITER $$
CREATE PROCEDURE get_risk_factor()
BEGIN
	DECLARE risk_factor DECIMAL(9, 2) DEFAULT 0;
    DECLARE invoices_count INT;
    DECLARE invoices_total DECIMAL(9, 2);
    
    SELECT COUNT(*), invoice_total 
    INTO invoices_count, invoices_total
    FROM invoices;
    
    
    SET risk_factor = invoices_total / invoices_count * 5;
    
    SELECT risk_factor;
END$$
DELIMITER ;