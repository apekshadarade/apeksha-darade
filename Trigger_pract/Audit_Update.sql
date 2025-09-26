CREATE OR REPLACE TRIGGER update_delete_audit_a
BEFORE UPDATE OR DELETE ON audit_a
BEGIN
  IF UPPER(TO_CHAR(SYSDATE, 'MON')) = 'SEP' THEN
    RAISE_APPLICATION_ERROR(-20002, 'Cannot update or delete in September');
  END IF;
END;
/