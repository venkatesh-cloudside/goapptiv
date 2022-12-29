WITH 

{{config(materialized='table')}}

SPECIALITIES AS (

SELECT
json_extract_scalar(_airbyte_data, "$['_id']") as _id,
json_extract_scalar(_airbyte_data, "$['name']") as name,
json_extract_scalar(_airbyte_data, "$['code']") as code,
FROM goapptiv-data-lake.airbyte_mongodb_doctor_mangement._airbyte_raw_SPECIALITIES

)

SELECT * FROM SPECIALITIES
