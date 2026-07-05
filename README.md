# 🛒 Retail Engine Database Architecture

## 📋 Project Overview
This repository contains a production-grade relational database blueprint designed to handle core transactional backend workflows for a retail e-commerce application. 

The architecture moves completely away from disorganized flat-file structures (like standard spreadsheets) to establish an organized schema. This setup enforces strict data entry validations, isolates transactional logs, and ensures complete information accuracy at the server level using foundational database development pillars.

---

## 🎨 Visual Database Layout
![Database Schema Blueprint](schema_design.png)

---

## 🏗️ Core Structural Architecture

### 1. `customers` Table (User Registry Component)
* **Purpose**: Manages identification records, profile validation data, and communication touchpoints for platform shoppers.
* **Architecture Details**:
  * Employs tight parameter boundaries like `VARCHAR(50)` for names to optimize system storage space.
  * Expands to `VARCHAR(255)` for shipping lines to accommodate variable corporate or global delivery address strings.
  * Protects data uniqueness by wrapping key identifier columns in explicit, named tracking constraints.

### 2. `products` Table (Inventory Ledger Component)
* **Purpose**: Tracks operational logistics, supplier catalog indices, and warehouse asset counts.
* **Architecture Details**:
  * Implements exact fixed-point numerical positioning (`DECIMAL(10,2)`) instead of dangerous approximate floating types, guaranteeing that global price tracking is protected against compounding rounding errors.
  * Leverages clean integer allocations (`INT`) for raw stock counts to facilitate swift resource level checks.

### 3. `orders` Table (Transactional Log Component)
* **Purpose**: Registers chronological consumer purchase footprints, cross-entity relationships, and checkout timelines.
* **Architecture Details**:
  * Segregates financial transaction strings into dedicated columns away from customer profile arrays to preserve server-side calculation speeds.
  * Captures precise checkout temporal logs using standard `DATETIME` stamp configurations.

---

## 🛡️ Database Engineering Principles Demonstrated

* **Data Isolation Management**: Maintains a clean separation between data definitions (`schema.sql`) and live record generation engines (`data_load.sql`) to avoid database state corruption during application deployment pipelines.
* **Precision Typing Strategy**: Showcases intentional domain selection by mapping alphanumeric text lengths, numeric currency positions, and timestamp attributes to their most hardware-efficient storage variations.
* **Enforced Integrity Constraints**: Restricts data entries through strict null safety definitions (`NOT NULL`) to prevent corrupted or broken records from slipping into downstream business operations.
