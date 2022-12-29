WITH 

{{config(materialized='table')}}

IMPORTANTS AS (

SELECT
json_extract_scalar(_airbyte_data, "$['_id']") as _id,
json_extract_scalar(_airbyte_data, "$['doctor_id']") as doctor_id,
json_extract_scalar(_airbyte_data, "$['headquarter_code']") as headquarter_code,
json_extract_scalar(_airbyte_data, "$['organization_code']") as organization_code,
json_extract_scalar(_airbyte_data, "$['department_code']") as department_code,
json_extract_string_array(_airbyte_data, "$['doctor_ids']") as doctor_ids
FROM goapptiv-data-lake.airbyte_mongodb_doctor_mangement._airbyte_raw_IMPORTANTS

)

SELECT * FROM IMPORTANTS
