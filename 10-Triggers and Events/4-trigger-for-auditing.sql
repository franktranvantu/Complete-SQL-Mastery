DROP TABLE IF EXISTS payments_audit;

CREATE TABLE payments_audit(
    client_id   INT,
    date        DATE,
    amount      DECIMAL(9, 2),
    action_type ENUM('INSERT', 'UPDATE', 'DELETE'),
    action_date DATETIME
)

DROP TRIGGER IF EXISTS payments_after_insert;

DELIMITER $$
CREATE TRIGGER payments_after_insert
AFTER INSERT ON payments
FOR EACH ROW
BEGIN
	UPDATE invoices
    SET payment_total = payment_total + NEW.amount
    WHERE invoice_id = NEW.invoice_id;

    INSERT INTO payments_audit VALUES (NEW.client_id, NEW.date, NEW.amount, 'INSERT', NOW());
END$$
DELIMITER ;

DROP TRIGGER IF EXISTS payments_after_delete;

DELIMITER $$
CREATE TRIGGER payments_after_delete
AFTER DELETE ON payments
FOR EACH ROW
BEGIN
	UPDATE invoices
    SET payment_total = payment_total - OLD.amount
    WHERE invoice_id = OLD.invoice_id;

    INSERT INTO payments_audit VALUES (OLD.client_id, OLD.date, OLD.amount, 'DELETE', NOW());
END$$
DELIMITER ;