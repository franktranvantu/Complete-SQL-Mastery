CREATE VIEW sales_by_client AS
SELECT
	client_id,
    name,
    SUM(invoice_total) AS total_sales
FROM clients c 
JOIN invoices i USING(client_id)
GROUP BY client_id, name;

SELECT *
FROM sales_by_client
ORDER BY total_sales DESC;

CREATE VIEW clients_balance AS 
SELECT 
	client_id,
    name,
    invoice_total - payment_total AS balance
FROM clients c
JOIN invoices i USING(client_id)
GROUP BY client_id;