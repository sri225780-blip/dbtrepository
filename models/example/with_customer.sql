{{
    config(
        materialized='ephemeral' 
    )
}}
SELECT *
FROM MINI_INGESTION_DB.RAW.RAW_CUSTOMER
WHERE CUSTOMER_NAME LIKE 'S%'