CREATE OR REPLACE VIEW sales_by_client AS
SELECT
	client_id,
    name,
    SUM(invoice_total) AS total_sales
FROM clients c 
JOIN invoices i USING(client_id)
GROUP BY client_id, name;