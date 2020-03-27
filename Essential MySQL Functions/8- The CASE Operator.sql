SELECT
    CASE
        WHEN DAY(NOW()) <= 10 THEN 'Top'
        WHEN DAY(NOW()) > 10 AND DAY(NOW()) <= 20 THEN 'Middle'
        ELSE 'Bottom'
    END;