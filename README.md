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
📅 **Deadline**: March 25, 2025 – 11:59 PM

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

📁 BPMN Diagram: [`bpm_diagram.drawio`](./Phase_II_Business_Process_Modeling/bpm_diagram.drawio)  [Uploading II. Phase Business Process Modeling.txt…]()

📝 Description: [`bpm_description.txt`](./Phase_II_Business_Process_Modeling/bpm_description.txt)  

> 🖼️ **INSERT SCREENSHOT** of your BPMN model here.
![ER Diagram](https://github.com/user-attachments/assets/ee256389-92fd-4513-b7ae-52fadf1d5525)![UML for WESTE MANAGEMENT SYSTEM](https://github.com/user-attachments/assets/ec7b8265-924d-41c0-85c1-0901cf749cab)

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

> 🖼️ **INSERT SCREENSHOT** showing sample inserts or updates in SQL Developer

---

## 🔹 Phase VI: Database Interaction & Transactions

- **Procedures**: Created to retrieve data by parameter
- **Functions**: Used for analytics and computation
- **Cursors**: Applied to retrieve data iteratively
- **Exception Handling**: Implemented inside blocks
- **Window Functions**: Used for analytical reports
- **Triggers**: Used to block DML on weekends
- **Packages**: Bundled procedures and functions

📁 Files:  
- [`audit_package.sql`](./Phase_VI_DB_Interaction/audit_package.sql)  
- [`trg_block_dml_employee.sql`](./Phase_VI_DB_Interaction/trg_block_dml_employee.sql)  

> 🖼️ **INSERT SCREENSHOTS**:
> - Package/Trigger compilation success
> - Trigger in action blocking an insert
> - Output of a window function or cursor-based procedure

---

## 🔹 Phase VII: Reporting & Monitoring

- Real-time execution and testing of:
  - Packages and procedures
  - Trigger behavior
  - Monitoring logs via OEM

> 🖼️ **INSERT SCREENSHOTS**:
> - OEM dashboard
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

## 🗂 Suggested Folder Structure

```bash
/
├── Phase_I_Problem_Statement_Presentation/
│   └── problem_statement.pptx
├── Phase_II_Business_Process_Modeling/
│   ├── bpm_diagram.drawio
│   └── bpm_description.txt
├── Phase_III_Logical_Model_Design/
│   ├── er_diagram.png
│   └── er_description.txt
├── Phase_IV_Database_Creation/
│   ├── database_creation_script.sql
│   └── oem_screenshots/
├── Phase_V_DDL_DML/
│   └── data_operations.sql
├── Phase_VI_DB_Interaction/
│   ├── audit_package.sql
│   └── trg_block_dml_employee.sql
└── README.md
