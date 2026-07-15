SELECT
    tc.CUSTOMER_ID,
    tc.CUSTOMER_NAME,
    tc.EMAIL,
    tc.CITY,
    sc.C_PHONE,
    sc.C_ACCTBAL
FROM TELCO_DB.DBT_SLATHA.T_CUSTOMER tc
INNER JOIN {{ ref('with_customer') }}.TPCH_SF1.CUSTOMER sc
    ON tc.CUSTOMER_ID = sc.C_CUSTKEY;