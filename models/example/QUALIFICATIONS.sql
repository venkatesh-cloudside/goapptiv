WITH 

{{config(materialized='table')}}

QUALIFICATIONS AS (

SELECT
json_extract_scalar(_airbyte_data, "$['_id']") as _id,
json_extract_scalar(_airbyte_data, "$['name_aibyte_transform']") as name,
json_extract_scalar(_airbyte_data, "$['updated_at']") as updated_at,
json_extract_scalar(_airbyte_data, "$['created_at']") as created_at
FROM goapptiv-data-lake.airbyte_mongodb_doctor_mangement._airbyte_raw_QUALIFICATIONS

)
SELECT * FROM QUALIFICATIONS
