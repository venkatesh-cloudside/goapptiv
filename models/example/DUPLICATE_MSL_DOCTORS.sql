WITH 

{{config(materialized='table')}}

DUPLICATE_MSL_DOCTORS AS (

SELECT
json_extract(_airbyte_data, "$['_id']") as _id,
json_extract_scalar(_airbyte_data, "$['count']") as count,
json_extract_scalar(_airbyte_data, "$['new_created_at']") as new_created_at,
json_extract_string_array(_airbyte_data, "$['object_ids']") as object_ids
FROM goapptiv-data-lake.airbyte_mongodb_doctor_mangement._airbyte_raw_DUPLICATE_MSL_DOCTORS

)

SELECT * FROM DUPLICATE_MSL_DOCTORS
