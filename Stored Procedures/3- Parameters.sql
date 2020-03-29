DROP PROCEDURE IF EXISTS get_clients_by_state;
DELIMITER $$
CREATE PROCEDURE get_clients_by_state(state CHAR(2))
BEGIN
    SELECT * FROM clients c 
    WHERE c.state = state 
END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS get_invoices_by_client_id;
DELIMITER $$
CREATE PROCEDURE get_invoices_by_client_id(client_id INT)
BEGIN
    SELECT * FROM invoices i
    WHERE i.client_id = client_id;
END $$
DELIMITER ;