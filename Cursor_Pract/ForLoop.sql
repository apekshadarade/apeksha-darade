
DECLARE
v_increase NUMBER := 2.10;  
BEGIN
FOR rec IN (SELECT product_id, price FROM productinfo WHERE price < 5000) LOOP
UPDATE productinfo
SET price = rec.price * v_increase
WHERE product_id = rec.product_id;
END LOOP;
DBMS_OUTPUT.PUT_LINE('Prices updated.');
END;
/
