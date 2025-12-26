-- PURPOSE
-- Dimensional Table created to store context 
-- The context here to divide the category into several level based on '|'

-- SELECTING THE DATA THAT WILL BE USED ON SILVER DATA

SELECT * FROM bronze.products_raw;

-- Classify the category by splitting the category based on the '|'

DROP TABLE IF EXISTS silver.dim_product_taxonomy;

CREATE TABLE silver.dim_product_taxonomy AS
SELECT DISTINCT
    product_id,

    INITCAP(REGEXP_REPLACE(split_part(category,'|',1),'&',' & ')) AS level_1,

    INITCAP(REGEXP_REPLACE(
        REGEXP_REPLACE(split_part(category,'|',2),'&',' & '),
        '([a-z])([A-Z])','\1 \2','g'
    )) AS level_2,

    INITCAP(REGEXP_REPLACE(
        REGEXP_REPLACE(split_part(category,'|',3),'&',' & '),
        '([a-z])([A-Z])','\1 \2','g'
    )) AS level_3,

    INITCAP(REGEXP_REPLACE(
        REGEXP_REPLACE(split_part(category,'|',4),'&',' & '),
        '([a-z])([A-Z])','\1 \2','g'
    )) AS level_4,

    INITCAP(REGEXP_REPLACE(
        REGEXP_REPLACE(split_part(category,'|',5),'&',' & '),
        '([a-z])([A-Z])','\1 \2','g'
    )) AS level_5

FROM bronze.products_raw;

SELECT * FROM silver.dim_product_taxonomy;
