WITH 

{{config(materialized='table')}}

CATEGORIES AS (

SELECT
json_extract_scalar(_airbyte_data, "$['_id']") as _id,
json_extract_scalar(_airbyte_data, "$['name']") as name
FROM goapptiv-data-lake.airbyte_test._airbyte_raw_CATEGORIES

)

SELECT * FROM CATEGORIES
