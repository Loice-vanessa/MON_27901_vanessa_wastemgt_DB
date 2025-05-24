
-- === PHASE VI: DDL, DML, PROCEDURES, FUNCTIONS, AND PACKAGES ===

-- Add column to Waste_Requests
ALTER TABLE Waste_Requests ADD description VARCHAR2(255);

-- DML: Insert, Update, Delete
INSERT INTO Waste_Requests VALUES (103, 1, SYSDATE, 'Pending', 'Extra pickup needed');
UPDATE Waste_Requests SET status = 'Completed' WHERE request_id = 101;
DELETE FROM Complaints WHERE complaint_id = 5001;

-- Procedure: Get Complaints by User
CREATE OR REPLACE PROCEDURE GetComplaintsByUser (
  p_user_id IN NUMBER
)
IS
  CURSOR comp_cursor IS
    SELECT complaint_id, message, status
    FROM Complaints
    WHERE user_id = p_user_id;

  v_id Complaints.complaint_id%TYPE;
  v_msg Complaints.message%TYPE;
  v_status Complaints.status%TYPE;

BEGIN
  OPEN comp_cursor;
  LOOP
    FETCH comp_cursor INTO v_id, v_msg, v_status;
    EXIT WHEN comp_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE('Complaint ID: ' || v_id || ', Message: ' || v_msg || ', Status: ' || v_status);
  END LOOP;
  CLOSE comp_cursor;
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error occurred: ' || SQLERRM);
END;
/

-- Function: Top Collector by Collection Count
CREATE OR REPLACE FUNCTION TopCollector RETURN VARCHAR2 IS
  v_name VARCHAR2(100);
BEGIN
  SELECT name INTO v_name
  FROM (
    SELECT c.name, COUNT(*) AS total,
           RANK() OVER (ORDER BY COUNT(*) DESC) AS rk
    FROM Collectors c
    JOIN Schedules s ON c.collector_id = s.collector_id
    GROUP BY c.name
  ) WHERE rk = 1;

  RETURN v_name;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RETURN 'No data';
  WHEN OTHERS THEN
    RETURN 'Error: ' || SQLERRM;
END;
/

-- Package: Waste_Analytics_PKG
CREATE OR REPLACE PACKAGE Waste_Analytics_PKG AS
  PROCEDURE PrintAllComplaints;
  FUNCTION CountRequestsByUser(p_user_id NUMBER) RETURN NUMBER;
END Waste_Analytics_PKG;
/

CREATE OR REPLACE PACKAGE BODY Waste_Analytics_PKG AS

  PROCEDURE PrintAllComplaints IS
    CURSOR cur IS SELECT user_id, message FROM Complaints;
    v_user Complaints.user_id%TYPE;
    v_msg Complaints.message%TYPE;
  BEGIN
    FOR rec IN cur LOOP
      DBMS_OUTPUT.PUT_LINE('User: ' || rec.user_id || ' | Message: ' || rec.message);
    END LOOP;
  END;

  FUNCTION CountRequestsByUser(p_user_id NUMBER) RETURN NUMBER IS
    v_count NUMBER;
  BEGIN
    SELECT COUNT(*) INTO v_count
    FROM Waste_Requests
    WHERE user_id = p_user_id;
    RETURN v_count;
  EXCEPTION
    WHEN OTHERS THEN
      RETURN -1;
  END;

END Waste_Analytics_PKG;
/
