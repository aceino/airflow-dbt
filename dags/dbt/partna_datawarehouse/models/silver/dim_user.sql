{{
    config(
        materialized='table'
    )
}}

SELECT 
    DISTINCT customer_id
FROM {{
    source ('partna_transactions', 'transaction_data_wide_table')
}}
WHERE customer_id IS NOT NULL