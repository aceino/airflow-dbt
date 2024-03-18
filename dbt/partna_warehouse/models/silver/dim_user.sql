{{
    config(
        materialized='table',
        tags=['schedule:1d']
    )
}}

SELECT
    DISTINCT
        t.customer_id
FROM {{ source('partna_transactions', 'transaction_data_wide_table') }} t
WHERE t.customer_id IS NOT NULL