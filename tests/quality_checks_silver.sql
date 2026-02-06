/* 
====================================================================================
Quality Checks
====================================================================================
Script purpose:
    This script performs various quality checks for data consistency, accuracy,
    and standardization across the 'silver' schema. It includes checks for:
      - Null or duplicate primary keys.
      - Unwanted spaces in string fields.
      - Data standardization and consistency
      - Invalid data ranges and orders.
      - Data consistency between related fields.

Usage Notes:
      - Run these checks after data loading to the silver layer.
      - Investigate and resolve any discrepancies found during the checks.
      - Similar checks like the crm_cust_info is conducted for other tables in the
        silver schema
====================================================================================

-- 1. Check for Nulls or Duplicates in Primary Key
SELECT
  cst_id,
  COUNT(*)
FROM silver.crm_cust_info
GROUP BY cst_id
HAVING COUNT(*) > 1 OR cst_id IS NULL;

--2. Check for unwanted spaces
SELECT cst_firstname
FROM silver.crm_cust_info
WHERE cst_firstname != TRIM(cst_firstname);

--3. Check for data standardization and consistency
SELECT DISTINCT cst_gndr
FROM silver.crm_cust_info
