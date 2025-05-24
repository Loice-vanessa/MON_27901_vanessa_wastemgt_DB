
-- === PHASE VII: ADVANCED DATABASE PROGRAMMING AND AUDITING ===

-- 1. Holidays Reference Table
CREATE TABLE Holidays (
  holiday_date DATE PRIMARY KEY,
  description VARCHAR2(100)
);

-- Sample holidays
INSERT INTO Holidays VALUES (TO_DATE('2025-06-01', 'YYYY-MM-DD'), 'Independence Day');
INSERT INTO Holidays VALUES (TO_DATE('2025-06-16', 'YYYY-MM-DD'), 'National Cleanup Day');

-- 2. Auditing Table
CREATE TABLE Audit_Log (
  log_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  user_id NUMBER,
  action_date DATE DEFAULT SYSDATE,
  operation_type VARCHAR2(10),
  object_name VARCHAR2(50),
  status VARCHAR2(10)
);

-- 3. Security Trigger to Block DML on Weekdays and Holidays
CREATE OR REPLACE TRIGGER trg_block_dml
BEFORE INSERT OR UPDATE OR DELETE ON Waste_Requests
DECLARE
  v_day VARCHAR2(10);
  v_today DATE := SYSDATE;
  v_holiday NUMBER;
BEGIN
  SELECT TO_CHAR(v_today, 'DY') INTO v_day FROM dual;

  SELECT COUNT(*) INTO v_holiday
  FROM Holidays
  WHERE holiday_date = TRUNC(v_today);

  IF v_day IN ('MON', 'TUE', 'WED', 'THU', 'FRI') OR v_holiday > 0 THEN
    RAISE_APPLICATION_ERROR(-20001, 'DML operations not allowed today.');
  END IF;
END;
/

-- 4. Compound Trigger for Auditing DML on Waste_Requests
CREATE OR REPLACE TRIGGER trg_audit_waste_requests
AFTER INSERT OR UPDATE OR DELETE ON Waste_Requests
FOR EACH ROW
BEGIN
  INSERT INTO Audit_Log (user_id, operation_type, object_name, status)
  VALUES (
    USERENV('SESSIONID'),
    CASE
      WHEN INSERTING THEN 'INSERT'
      WHEN UPDATING THEN 'UPDATE'
      WHEN DELETING THEN 'DELETE'
    END,
    'Waste_Requests',
    'allowed'
  );
END;
/
