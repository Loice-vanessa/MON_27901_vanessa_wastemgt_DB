# Waste Management System Database Project

## Project Information

- **Group Name**: MON
- **Student ID**: 27901
- **First Name**: Vanessa
- **Project**: Waste Management System
- **Database Name**: `mon_27901_vanessa_wastemgt_db`
- **Password**: `vanessa`

---

## 🔹 Phase I: Problem Statement and Presentation

> Deadline: **March 25, 2025 – 11:59 PM**

**Problem**: Poor waste collection and tracking across urban districts.  
**Context**: Used by city councils to monitor, assign, and manage waste collection.  
**Target Users**: Waste officers, admins, garbage truck drivers.  
**Goal**: Automate reporting, track collections, assign zones, and monitor fleet movement.

📁 [problem_statement.pptx](./Phase_I_Problem_Statement_Presentation/problem_statement.pptx)

---

## 🔹 Phase II: Business Process Modeling

- Uses **BPMN/UML** to show flow from waste request → truck assignment → collection → reporting
- Entities: `Residents`, `Waste Officer`, `Admin`, `System`, `Truck`

📁 BPMN Diagram: [bpm_diagram.drawio](./Phase_II_Business_Process_Modeling/bpm_diagram.drawio)  
📝 [Explanation Text](./Phase_II_Business_Process_Modeling/bpm_description.txt)

---

## 🔹 Phase III: Logical Model Design

- ERD showing: `WasteZone`, `Truck`, `Officer`, `CollectionReport`, `Schedule`
- Normalized to **3NF**
- Includes PKs, FKs, and Constraints

📁 ER Diagram: [er_diagram.png](./Phase_III_Logical_Model_Design/er_diagram.png)  
📝 [Explanation Text](./Phase_III_Logical_Model_Design/er_description.txt)

---

## 🔹 Phase IV: Database (Pluggable DB) Creation

- Database: `mon_27901_vanessa_wastemgt_db`
- Password: `vanessa` (super admin role)
- Monitored with **Oracle Enterprise Manager (OEM)**

📁 [Script](./Phase_IV_Database_Creation/database_creation_script.sql)  
📷 [OEM Screenshots](./Phase_IV_Database_Creation/oem_screenshots/)

---

## ✅ How to Run

1. Load the `.sql` script into Oracle SQL Developer
2. Login as `vanessa` user (password: vanessa)
3. Use OEM to monitor usage and performance