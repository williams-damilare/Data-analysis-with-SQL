CREATE DATABASE EURODEBTCRISIS;
USE EURODEBTCRISIS;
Create table EURODEBT(CREDITOR CHAR(10),
                         DEBTOR varchar(25),
                         AMOUNT double,
                         RISK varchar(25)
                       );
-- Problem statement 1: Sql query to fetch the list  of all creditors with a stable risk		
SELECT creditor FROM EURODEBT WHERE risk = "stable";	
	-- Problem statement 2: Sql query giving investment advice based on risk level			
SELECT creditor,
CASE WHEN risk = "stable" THEN 'Very Good'
WHEN risk = "low Risk" THEN ' fairly good'
ELSE 'Investment not safe'
END AS Investment_Advice
FROM EURODEBT;

-- Problem statement 2: Sql query to order the creditors by the amount in ascendimg order
SELECT  debtor FROM EURODEBT ORDER BY Amount ASC ;
SELECT  count(creditor) FROM EURODEBT ORDER BY Amount ASC ;
