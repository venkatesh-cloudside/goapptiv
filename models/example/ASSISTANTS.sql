WITH 

{{config(materialized='table')}}

ASSISTANTS AS (

SELECT

json_extract_scalar(_airbyte_data, "$['_id']") as _id,
json_extract_scalar(_airbyte_data, "$['full_name']") as full_name,
json_extract_scalar(_airbyte_data, "$['mobile']") as mobile,
json_extract_scalar(_airbyte_data, "$['auth_id']") as auth_id,
json_extract_scalar(_airbyte_data, "$['doctor_id']") as doctor_id,
json_extract_string_array(_airbyte_data, "$['category_ids']") as category_ids,
json_extract_scalar(_airbyte_data, "$['updated_at']") as updated_at,
json_extract_scalar(_airbyte_data, "$['created_at']") as created_at,
json_extract_scalar(_airbyte_data, "$['deleted_at']") as deleted_at

FROM goapptiv-data-lake.airbyte_mongodb_doctor_mangement._airbyte_raw_ASSISTANTS

)

SELECT * FROM ASSISTANTS
