WITH 

{{config(materialized='table')}}

system_js AS (

SELECT
json_extract_scalar(_airbyte_data, "$['_id']") as _id,
json_extract_scalar(_airbyte_data, "$['value']") as value,
FROM goapptiv-data-lake.airbyte_mongodb_doctor_mangement._airbyte_raw_system_js

)

SELECT * FROM system_js
