# :notebook: Data Warehouse and Analytics Project

Welcome to the **Data Warehouse and Analytics Project** repository!

This project demonstrates a comprehensive data warehousing and analytics solution, from building a datawarehouse to generating actionable insights. Designed as a portfolio project that highlights industry best practices in data engineering and analytics.

---
## :clipboard: Project Overview
This project involves:
1. **Data Architecture**: Designing a modern data warehouse using the *Medallion* architecture **bronze**, **silver**, and **gold** layers.
2. **ETL Pipelines**: Extracting, transforming, and loading data from source systems into the warehouse.
3. **Data Modeling**: Developing fact and dimension tables optimized for analytical queries.
4. **Analytics & Reporting**: Creating SQL-based reports and dashboards for actionable insights.

---
## :hammer_and_pick: Important Links and Tools:
- [Notion](https://www.notion.com/desktop)
- [SQL Server Express](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)
- [SQL Server Management Studio](https://learn.microsoft.com/en-us/ssms/install/install)
- [DrawIO](https://www.drawio.com/)
- [Dataset](https://github.com/esanben/sql-data-warehouse-project/tree/main/datasets)

## :checkered_flag: Project Requirements

### Building the Data Warehouse (Data Engineering)

#### Objective
Develop a modern data warehouse using SQL Server to consolidate sales data, enabling analytical reporting and informed decision-making.

#### Specifications
- **Data Sources**: Import data from two source systems (ERP and CRM) provided as CSV files.
- **Data Quality**: Cleanse and resolve data quality issues prior to analysis.
- **Integration**: Combine both sources into a single, user-friendly data model designed for analytical queries.
- **Scope**: Focus on the latest dataset only; historization of data is not required.
- **Documentation**: Provide clear documentation of the data model to support both business stakeholders and analytical teams.

---

### :chart_with_upwards_trend: BI: Analytics & Reporting (Data Analytics)

#### Objective
Develop SQL-based analytics to deliver detailed insights into:
- **Customer Behavior**
- **Product Performance**
- **Sales Trends**

These insights empower stakeholders with key business metrics, enabling strategic decision-making.
For more details, refer to the [Data Catalog](https://github.com/esanben/sql-data-warehouse-project/blob/main/docs/data_catalog.md)

---
## :pencil: Data Architecture
The data architecture for this project follows the Medallion Architecture **Bronze**, **Silver**, and **Gold layers**:



1. **Bronze Layer**: Stores raw data as-is from the source systems. Data is ingested from CSV files into SQL Server Database.
2. **Silver Layer**: This layer includes data cleansing, standardization, and normalization processes to prepare data for analysis.
3. **Gold Layer**: Houses business-ready data modeled into a star schema required for reporting and analytics.
---

## :open_file_folder: Repository Structure
The hierarchy of this project is listed and described below.

```
📦 sql-data-warehouse-project
├─ LICENSE                                     # License information for the repository
├─ README.md                                   # Project overview and instructions
├─ datasets                                    # Raw datasets used for the project (ERP and CRM data)
│  ├─ source_crm
│  │  ├─ cust_info.csv
│  │  ├─ prd_info.csv
│  │  └─ sales_details.csv
│  └─ source_erp
│     ├─ CUST_AZ12.csv
│     ├─ LOC_A101.csv
│     ├─ PX_CAT_G1V2.csv
├─ docs
│  └─ data_catalog.md                          # Catalog of datasets, including field descriptions and metadata
├─ scripts                                     # SQL scripts for ETL and transformation
│  ├─ bronze
│  │  ├─ ddl_bronze.sql                        # SQL scripts for extracting and loading raw data
│  │  └─ procedure_load_bronze.sql
│  ├─ gold
│  │  └─ ddl_gold.sql                          # SQL scripts for creating analytical models
│  ├─ init_database.sql
│  └─ silver
│     ├─ ddl_silver.sql                        # SQL scripts for cleaning and transforming data
│     └─ procedure_load_silver.sql
└─ tests
   └─ quality_checks_silver.sql                # Test scripts and quality files for the silver layer
```

## :shield: License
This project is licensed under the [MIT License]. You are free to use, modify, and share this project with proper attribution

## :man: About Me
Hi there! I'm **Ayodele Benjamin Esan**. I hold a doctorate in Electrical Engineering with a focus on Deep Reinforcement Learning applications in Energy Systems. I'm in love with Data Engineering and on a mission to build systems that feed AI agents high-quality data to make informed decisions!
