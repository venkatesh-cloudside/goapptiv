WITH 

{{config(materialized='table')}}

TAGS AS (

SELECT
json_extract_scalar(_airbyte_data, "$['_id']") as _id,
json_extract_scalar(_airbyte_data, "$['name']") as name,
json_extract_scalar(_airbyte_data, "$['cards']") as cards,
FROM goapptiv-data-lake.airbyte_test._airbyte_raw_TAGS

)

SELECT * FROM TAGS
