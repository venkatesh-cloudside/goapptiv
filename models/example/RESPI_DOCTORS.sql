WITH 

{{config(materialized='table')}}

RESPI_DOCTORS AS (

SELECT
json_extract_scalar(_airbyte_data, "$['_id']") as _id,
json_extract_scalar(_airbyte_data, "$['full_name']") as full_name,
json_extract_scalar(_airbyte_data, "$['msl_code']") as msl_code,
json_extract_scalar(_airbyte_data, "$['headquarter_code']") as headquarter_code
FROM goapptiv-data-lake.airbyte_test._airbyte_raw_RESPI_DOCTORS

)

SELECT * FROM RESPI_DOCTORS
