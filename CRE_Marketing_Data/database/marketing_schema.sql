-- Building Optimization Tech Commercial Real Estate Marketing Schema
-- -----------------------------------------------------
-- Schema bot_cre_marketing
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bot_cre_marketing` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `bot_cre_marketing` ;

-- -----------------------------------------------------
-- DROP TABLE
-- -----------------------------------------------------

-- DROP TABLE IF EXISTS ccim ;
-- DROP TABLE IF EXISTS franchise_tax_info ;
-- DROP TABLE IF EXISTS franchise_tax_info_date ;
-- DROP TABLE IF EXISTS ftoffdir ;
-- DROP TABLE IF EXISTS sales_tax_info ;
-- DROP TABLE IF EXISTS sales_tax_info_date ;

-- -----------------------------------------------------
-- SELECT STATEMENTS
-- -----------------------------------------------------

SELECT * FROM  franchise_tax_info ;
SELECT * FROM  franchise_tax_info_date ;
SELECT * FROM  building_account ;

SELECT COUNT(*) FROM  franchise_tax_info ;
SELECT COUNT(*) FROM  franchise_tax_info_date ;
SELECT COUNT(*) FROM  builing_account ;

SELECT * FROM  franchise_tax_info_date 
WHERE Taxpayer_City = "HOUSTON";
SELECT * FROM  franchise_tax_info 
WHERE Taxpayer_City = "HOUSTON";
SELECT * FROM  building_account
WHERE SITE_ADDR_2 = "HOUSTON";

SELECT COUNT(*) FROM  franchise_tax_info_date 
WHERE Taxpayer_City = "HOUSTON";

SELECT COUNT(*) FROM  franchise_tax_info 
WHERE Taxpayer_City = "HOUSTON" 
AND Taxpayer_State = "TX";

SELECT COUNT(*) FROM  building_account
WHERE SITE_ADDR_2 = "HOUSTON";
-- -----------------------------------------------------
-- Remove Trailing spaces (Run this sql update before running the HoustonData.ipynb.)
-- -----------------------------------------------------
-------------- franchise_tax_info_date
-- UPDATE franchise_tax_info_date SET Taxpayer_Name = TRIM(Taxpayer_Name);
-- UPDATE franchise_tax_info_date SET Taxpayer_Address = TRIM(Taxpayer_Address);
-- UPDATE franchise_tax_info_date SET Taxpayer_City = TRIM(Taxpayer_City);
-- UPDATE franchise_tax_info_date SET Secretary_of_State_File_Number = TRIM(Secretary_of_State_File_Number);
-- UPDATE franchise_tax_info_date SET SOS_Charter_Date = TRIM(SOS_Charter_Date);
-- UPDATE franchise_tax_info_date SET Current_Exempt_Reason_Code = TRIM(Current_Exempt_Reason_Code);
-- UPDATE franchise_tax_info_date SET Agent_Name = TRIM(Agent_Name);
-- UPDATE franchise_tax_info_date SET Agent_Address = TRIM(Agent_Address);
-- UPDATE franchise_tax_info_date SET Agent_City = TRIM(Agent_City);
-- UPDATE franchise_tax_info_date SET Agent_State = TRIM(Agent_State);
-- UPDATE franchise_tax_info_date SET Agent_Zip_Code = TRIM(Agent_Zip_Code);
-- UPDATE franchise_tax_info_date SET SOS_Status_Date = TRIM(SOS_Status_Date);
 
-- -----------------------------------------------------
-- Table franchise_tax_info
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS franchise_tax_info (
  `Taxpayer_Number` BIGINT NULL DEFAULT NULL,
  `Taxpayer_Name` VARCHAR(100) NULL DEFAULT NULL,
  `Taxpayer_Address` VARCHAR(100) NULL DEFAULT NULL,
  `Taxpayer_City` VARCHAR(100) NULL DEFAULT NULL,
  `Taxpayer_State` VARCHAR(100) NULL DEFAULT NULL,
  `Taxpayer_Zip_Code` VARCHAR(100) NULL DEFAULT NULL,
  `Taxpayer_County_Code` INT NULL DEFAULT NULL,
  `Taxpayer_Organizational_Type` VARCHAR(100) NULL DEFAULT NULL,
  `Taxpayer_Phone_Number` VARCHAR(100) NULL DEFAULT NULL,
  `Record_Type_Code` VARCHAR(100) NULL DEFAULT NULL,
  `Responsibility_Beginning_Date` VARCHAR(100) NULL DEFAULT NULL,
  `Responsibility_End_Date` VARCHAR(100) NULL DEFAULT NULL,
  `Responsibility_End_Reason_Code` INT NULL DEFAULT NULL,
  `Secretary_of_State_File_Number` VARCHAR(100) NULL DEFAULT NULL,
  `SOS_Charter_Date` VARCHAR(100) NULL DEFAULT NULL,
  `SOS_Status_Date` VARCHAR(100) NULL DEFAULT NULL,
  `SOS_Status_Code` VARCHAR(100) NULL DEFAULT NULL,
  `Rigth_to_Tansact_Business_Code` VARCHAR(100) NULL DEFAULT NULL,
  `Current_Exempt_Reason_Code` INT NULL DEFAULT NULL,
  `Exempt_Begin_Date` VARCHAR(100) NULL DEFAULT NULL,
  `NAICS_Code` INT NULL DEFAULT NULL,
  `Taxpayer_Organizational_Name` VARCHAR(100) NULL DEFAULT NULL, -- added new column
  `Record_Type_Name` VARCHAR(100) NULL DEFAULT NULL, -- added new column
  `Responsibility_End_Reason_Name` VARCHAR(100) NULL DEFAULT NULL, -- added new column
  `SOS_Status_Name` VARCHAR(100) NULL DEFAULT NULL, -- added new column
  `Rigth_to_Tansact_Business_Name` VARCHAR(100) NULL DEFAULT NULL, -- added new column
  `DateTime` VARCHAR(100) NULL DEFAULT NULL);

-- -----------------------------------------------------
-- Table franchise_tax_info_date
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS franchise_tax_info_date (
  `Taxpayer_Number` BIGINT NULL DEFAULT NULL,
  `Taxpayer_Name` VARCHAR(100) NULL DEFAULT NULL,
  `Taxpayer_Address` VARCHAR(100) NULL DEFAULT NULL,
  `Taxpayer_City` VARCHAR(100) NULL DEFAULT NULL,
  `Taxpayer_State` VARCHAR(100) NULL DEFAULT NULL,
  `Taxpayer_Zip_Code` VARCHAR(100) NULL DEFAULT NULL,
  `Taxpayer_County_Code` INT NULL DEFAULT NULL,
  `Taxpayer_Organizational_Type` VARCHAR(100) NULL DEFAULT NULL,
  `Taxpayer_Phone_Number` VARCHAR(100) NULL DEFAULT NULL,
  `Record_Type_Code` VARCHAR(100) NULL DEFAULT NULL,
  `Responsibility_Beginning_Date` VARCHAR(100) NULL DEFAULT NULL,
  `Secretary_of_State_File_Number` VARCHAR(100) NULL DEFAULT NULL,
  `SOS_Charter_Date` VARCHAR(100) NULL DEFAULT NULL,
  `SOS_Status_Date` VARCHAR(100) NULL DEFAULT NULL,
  `Current_Exempt_Reason_Code` VARCHAR(100) NULL DEFAULT NULL,
  `Agent_Name` VARCHAR(100) NULL DEFAULT NULL,
  `Agent_Address` VARCHAR(100) NULL DEFAULT NULL,
  `Agent_City` VARCHAR(100) NULL DEFAULT NULL,
  `Agent_State` VARCHAR(100) NULL DEFAULT NULL,
  `Agent_Zip_Code` VARCHAR(100) NULL DEFAULT NULL,
  `Taxpayer_Organizational_Name` VARCHAR(100) NULL DEFAULT NULL, -- added new column
  `Record_Type_Name` VARCHAR(100) NULL DEFAULT NULL, -- added new column
  `DateTime` VARCHAR(100) NULL DEFAULT NULL);

-- -----------------------------------------------------
-- Table sales_tax_info_date
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS sales_tax_info_date (
`Taxpayer_Number` BIGINT NULL DEFAULT NULL,
`Outlet_Number` VARCHAR(100) NULL DEFAULT NULL,
`Taxpayer_Name` VARCHAR(100) NULL DEFAULT NULL,
`Taxpayer_Address` VARCHAR(100) NULL DEFAULT NULL,
`Taxpayer_City` VARCHAR(100) NULL DEFAULT NULL,
`Taxpayer_State` VARCHAR(100) NULL DEFAULT NULL,
`Taxpayer_Zip_Code` VARCHAR(100) NULL DEFAULT NULL,
`Taxpayer_County_Code`INT NULL DEFAULT NULL,
`Taxpayer_Phone_Number` VARCHAR(100) NULL DEFAULT NULL,
`Outlet_Name` VARCHAR(100) NULL DEFAULT NULL,
`Outlet_Address` VARCHAR(100) NULL DEFAULT NULL,
`Outlet_City` VARCHAR(100) NULL DEFAULT NULL,
`Outlet_State` VARCHAR(100) NULL DEFAULT NULL,
`Outlet_Zip_Code` VARCHAR(100) NULL DEFAULT NULL,
`Outlet_County_Code` VARCHAR(100) NULL DEFAULT NULL,
`Outlet_Phone_Number` VARCHAR(100) NULL DEFAULT NULL,
`Permit_Type` VARCHAR(100) NULL DEFAULT NULL,
`Tax_Code` INT NULL DEFAULT NULL,
`Outlet_NAICS_Code` VARCHAR(100) NULL DEFAULT NULL,
`Permit_Issue_Date` VARCHAR(100) NULL DEFAULT NULL,
`First_Sale_Date` VARCHAR(100) NULL DEFAULT NULL,
`DateTime` VARCHAR(100) NULL DEFAULT NULL);

-- -----------------------------------------------------
-- Table building_account
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS building_account (
`ACCOUNT` BIGINT NULL DEFAULT NULL,
`TAX_YEAR` VARCHAR(150) NULL DEFAULT NULL,
`MAILTO` VARCHAR(150) NULL DEFAULT NULL,
`MAIL_ADDR_1` VARCHAR(150) NULL DEFAULT NULL,
`MAIL_ADDR_2` VARCHAR(150) NULL DEFAULT NULL,
`MAIL_CITY` VARCHAR(150) NULL DEFAULT NULL,
`MAIL_STATE` VARCHAR(150) NULL DEFAULT NULL,
`MAIL_ZIP` VARCHAR(150) NULL DEFAULT NULL,
`MAIL_COUNTRY` VARCHAR(150) NULL DEFAULT NULL,
`UNDELIVERABLE` VARCHAR(150) NULL DEFAULT NULL,
`STR_PFX` VARCHAR(150) NULL DEFAULT NULL,
`STR_NUM` VARCHAR(150) NULL DEFAULT NULL,
`STR_NUM_SFX` VARCHAR(150) NULL DEFAULT NULL,
`STR_NAME` VARCHAR(150) NULL DEFAULT NULL,
`STR_SFX` VARCHAR(150) NULL DEFAULT NULL,
`STR_SFX_DIR` VARCHAR(150) NULL DEFAULT NULL,
`STR_UNIT` VARCHAR(150) NULL DEFAULT NULL,
`SITE_ADDR_1` VARCHAR(150) NULL DEFAULT NULL,
`SITE_ADDR_2` VARCHAR(150) NULL DEFAULT NULL,
`SITE_ADDR_3` VARCHAR(150) NULL DEFAULT NULL,
`STATE_CLASS` VARCHAR(150) NULL DEFAULT NULL,
`SCHOOL_DIST` VARCHAR(150) NULL DEFAULT NULL,
`MAP_FACET` VARCHAR(150) NULL DEFAULT NULL,
`KEY_MAP` VARCHAR(150) NULL DEFAULT NULL,
`NEIGHBORHOOD_CODE` VARCHAR(150) NULL DEFAULT NULL,
`NEIGHBORHOOD_GROUP` VARCHAR(150) NULL DEFAULT NULL,
`MARKET_AREA_1` VARCHAR(150) NULL DEFAULT NULL,
`MARKET_AREA_1_DSCR` VARCHAR(150) NULL DEFAULT NULL,
`MARKET_AREA_2` VARCHAR(150) NULL DEFAULT NULL,
`MARKET_AREA_2_DSCR` VARCHAR(150) NULL DEFAULT NULL,
`ECON_AREA` VARCHAR(150) NULL DEFAULT NULL,
`ECON_BLD_CLASS` VARCHAR(150) NULL DEFAULT NULL,
`CENTER_CODE` VARCHAR(150) NULL DEFAULT NULL,
`YR_IMPR` VARCHAR(150) NULL DEFAULT NULL,
`YR_ANNEXED` VARCHAR(150) NULL DEFAULT NULL,
`SPLT_DT` VARCHAR(150) NULL DEFAULT NULL,
`DSC_CD` VARCHAR(150) NULL DEFAULT NULL,
`NXT_BUILDING` VARCHAR(150) NULL DEFAULT NULL,
`TOTAL_BUILDING_ARE` VARCHAR(150) NULL DEFAULT NULL,
`TOTAL_LAND_AREA` VARCHAR(150) NULL DEFAULT NULL,
`ACREAGE` VARCHAR(150) NULL DEFAULT NULL,
`CAP_ACCOUNT` VARCHAR(150) NULL DEFAULT NULL,
`SHARED_CAD_CODE` VARCHAR(150) NULL DEFAULT NULL,
`LAND_VALUE` VARCHAR(150) NULL DEFAULT NULL,
`IMPROVEMENT_VALUE` VARCHAR(150) NULL DEFAULT NULL,
`EXTRA_FEATURES_VAL` VARCHAR(150) NULL DEFAULT NULL,
`AG_VALUE` VARCHAR(150) NULL DEFAULT NULL,
`ASSESSED_VALUE` VARCHAR(150) NULL DEFAULT NULL,
`TOTAL_APPRAISED_VA` VARCHAR(150) NULL DEFAULT NULL,
`TOTAL_MARKET_VALUE` VARCHAR(150) NULL DEFAULT NULL,
`PRIOR_LND_VALUE` VARCHAR(150) NULL DEFAULT NULL,
`PRIOR_IMPR_VALUE` VARCHAR(150) NULL DEFAULT NULL,
`PRIOR_X_FEATURES_V` VARCHAR(150) NULL DEFAULT NULL,
`PRIOR_AG_VALUE` VARCHAR(150) NULL DEFAULT NULL,
`PRIOR_TOTAL_APPRAI` VARCHAR(150) NULL DEFAULT NULL,
`PRIOR_TOTAL_MARKET` VARCHAR(150) NULL DEFAULT NULL,
`NEW_CONSTRUCTION_V` VARCHAR(150) NULL DEFAULT NULL,
`TOTAL_RCN_VALUE` VARCHAR(150) NULL DEFAULT NULL,
`VALUE_STATUS` VARCHAR(150) NULL DEFAULT NULL,
`NOTICED` VARCHAR(150) NULL DEFAULT NULL,
`NOTICE_DATE` VARCHAR(150) NULL DEFAULT NULL,
`PROTESTED` VARCHAR(150) NULL DEFAULT NULL,
`CERTIFIED_DATE` VARCHAR(150) NULL DEFAULT NULL,
`LAST_INSPECTED_DAT` VARCHAR(150) NULL DEFAULT NULL,
`LAST_INSPECTED_BY` VARCHAR(150) NULL DEFAULT NULL,
`NEW_OWNER_DATE` VARCHAR(150) NULL DEFAULT NULL,
`LEGAL_DSCR_1` VARCHAR(150) NULL DEFAULT NULL,
`LEGAL_DSCR_2` VARCHAR(150) NULL DEFAULT NULL,
`LEGAL_DSCR_3` VARCHAR(150) NULL DEFAULT NULL,
`LEGAL_DSCR_4` VARCHAR(150) NULL DEFAULT NULL,
`JURS` VARCHAR(150) NULL DEFAULT NULL);