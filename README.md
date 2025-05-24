# 🗑 Waste Management System Database Project

## 📌 Project Information

- **Group Name**: MON  
- **Student ID**: 27901  
- **Name**: Vanessa  
- **Project**: Waste Management System  
- **Database Name**: `mon_27901_vanessa_wastemgt_db`  
- **Password**: `#########`

---

## 🔹 Phase I: Problem Statement and Presentation  

**Problem**: Inefficient waste collection and poor tracking in urban areas.  
**Users**: Waste officers, admins, garbage truck drivers  
**Goal**:  
- Automate reporting  
- Assign and monitor zones  
- Track waste collection operations  
- Improve fleet visibility

📁 File: [problem_statement.pptx](https://github.com/Loice-vanessa/MON_27901_vanessa_wastemgt_DB/blob/main/_Mon_27901_Icyeza_PLSQL%20(2).pptx)

---

## 🔹 Phase II: Business Process Modeling

- Flow: Resident request ➝ Officer approval ➝ Truck assignment ➝ Collection ➝ Report logging  
- Tools: BPMN/UML  
- Key Actors: `Resident`, `Waste Officer`, `Admin`, `Truck`, `System`

📁 BPMN Diagram: 

> 🖼️ **SCREENSHOT** of my BPMN model here.
![UML for WESTE MANAGEMENT SYSTEM](https://github.com/user-attachments/assets/ec7b8265-924d-41c0-85c1-0901cf749cab)

---

## 🔹 Phase III: Logical Model Design

- ERD includes: `WasteZone`, `Truck`, `Officer`, `CollectionReport`, `Schedule`, `Public_Holidays`
- Relationships: Defined with PKs, FKs  
- Normalized to 3NF

📁 ER Diagram: [`er_diagram.png`](./Phase_III_Logical_Model_Design/er_diagram.png)  
📝 Description: [`er_description.txt`](./Phase_III_Logical_Model_Design/er_description.txt)

> 🖼️ **INSERT SCREENSHOT** of the full ER diagram here.
![ER Diagram](https://github.com/user-attachments/assets/ee256389-92fd-4513-b7ae-52fadf1d5525)

---

## 🔹 Phase IV: Database Creation (Oracle Pluggable DB)

- Database: `mon_27901_vanessa_wastemgt_db`
- User: `vanessa` (admin privileges)  
- Tool: Oracle SQL Developer + Oracle Enterprise Manager (OEM)

📁 Script: [`database_creation_script.sql`](./Phase_IV_Database_Creation/database_creation_script.sql)  
📷 OEM Monitoring:<img width="959" alt="pl1" src="https://github.com/user-attachments/assets/041bc573-86a7-43c7-b53c-c4f5402e1297" />
(./Phase_IV_Database_Creation/oem_screenshots)

> 🖼️ **INSERT SCREENSHOTS**:
> - SQL Developer showing database creation
> - OEM monitoring dashboard

---

## 🔹 Phase V: DDL/DML Script Execution

- DDL: `CREATE`, `ALTER`, `DROP` (e.g., tables, constraints)
- DML: `INSERT`, `UPDATE`, `DELETE` (test data for waste records)

📁 Scripts: [`data_operations.sql`](./Phase_V_DDL_DML/data_operations.sql)

> 🖼️ ** SCREENSHOT** showing sample inserts or updates in SQL Developer
<img width="803" alt="pl2" src="https://github.com/user-attachments/assets/fb6c8129-0ade-4779-be00-d30e97485072" />
<img width="956" alt="pl3" src="https://github.com/user-attachments/assets/7ff13535-6120-42fe-90d5-406cbc7aa1ba" />
<img width="959" alt="pl4" src="https://github.com/user-attachments/assets/42e3d93c-8467-41d5-9943-237790a0d55d" />
> - sql developer
<img width="959" alt="pl5" src="https://github.com/user-attachments/assets/fc1cbfc6-8405-4daa-a4bb-360875f6c9cb" />
<img width="959" alt="pl6" src="https://github.com/user-attachments/assets/816fd737-ef13-4ee1-a01d-644d01ac3777" />
<img width="815" alt="pl8" src="https://github.com/user-attachments/assets/9f7f8616-4e9a-43d5-8dd9-f09fd64f3047" />
<img width="959" alt="pl9" src="https://github.com/user-attachments/assets/f76fd104-eca9-4a0d-8f93-188dab3ce81f" />
<img width="956" alt="pl11" src="https://github.com/user-attachments/assets/ea66e86e-65eb-4ba7-a950-71ba1289db04" />
<img width="751" alt="pl12" src="https://github.com/user-attachments/assets/a4debc3a-6621-44e2-9c78-a9699241ecc0" />

---


## 🔹 Phase VI: Database Interaction & Transactions

- **Procedures**: Created to retrieve data by parameter
- <img width="959" alt="pl procedure" src="https://github.com/user-attachments/assets/c647bf64-3aec-4dbd-b696-e1db9e1a80b5" />
- **Functions**: Used for analytics and computation
- <img width="959" alt="pl function" src="https://github.com/user-attachments/assets/28af8168-9fd1-499c-85ab-bce0003bc30a" />
- **Cursors**: Applied to retrieve data iteratively
- **Exception Handling**: Implemented inside blocks
- <img width="959" alt="pl ex" src="https://github.com/user-attachments/assets/5faa25e5-1813-46fa-8a9c-98bd55218ccc" />
- **Window Functions**: Used for analytical reports
- <img width="959" alt="pl triger" src="https://github.com/user-attachments/assets/e35b871a-5136-43f3-909b-0becffb24561" />
- **Triggers**: Used to block DML on weekends
- <img width="959" alt="image" src="https://github.com/user-attachments/assets/fc5b173f-0b66-458a-800d-b6455235f46f" />
- **Packages**: Bundled procedures and functions
<img width="959" alt="pl package" src="https://github.com/user-attachments/assets/a89e87c4-5e8a-4c56-950b-f606aca72198" />

📁 Files:  
- [`audit_package.sql`](./Phase_VI_DB_Interaction/audit_package.sql)  
- [`trg_block_dml_employee.sql`](./Phase_VI_DB_Interaction/trg_block_dml_employee.sql)  [Uplo
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
ading phase_vi_interactions.sql…]()


> 🖼️ ** SCREENSHOTS**:
> - Package/Trigger compilation success
> - <img width="959" alt="pl package body" src="https://github.com/user-attachments/assets/a9fe0a0b-6d22-4d47-a563-4487c491cd88" />
> - Trigger in action blocking an insert
> - <img width="959" alt="pl pro compile" src="https://github.com/user-attachments/assets/fea20020-f71b-4831-9c89-dfe9d310cf5b" />
> - Output of a window function or cursor-based procedure

---

## 🔹 Phase VII: Reporting & Monitoring

- Real-time execution and testing of:
  - Packages and procedures
  - Trigger behavior
  - Monitoring logs via OEM

> 🖼️ **INSERT SCREENSHOTS**:
> - OEM dashboard
> - [Uploading p
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
hase_vii_advanced_auditing.sql…]()

> - Procedure execution output
> - Trigger exception error message

---

## ✅ How to Run

1. Open Oracle SQL Developer  
2. Connect with:
   - Username: `vanessa`
   - Password: `#########`  
3. Run `.sql` scripts in this order:
   - `database_creation_script.sql`
   - `data_operations.sql`
   - `audit_package.sql`
   - `trg_block_dml_employee.sql`  
4. Monitor with **OEM** and verify procedures/triggers

---


