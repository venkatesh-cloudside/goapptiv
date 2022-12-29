WITH 

{{config(materialized='table')}}

DOCTORS AS (

SELECT
json_extract(_airbyte_data, "$['auth_id']") as auth_id,
json_extract_scalar(_airbyte_data, "$['msl_code']") as msl_code,
json_extract_scalar(_airbyte_data, "$['mobile']") as mobile,
json_extract_scalar(_airbyte_data, "$['created_at']") as created_at,
json_extract_scalar(_airbyte_data, "$['master_speciality']") as master_speciality,
json_extract_string_array(_airbyte_data, "$['speciality_ids']") as speciality_ids,
json_extract_scalar(_airbyte_data, "$['full_name']") as full_name,
json_extract_scalar(_airbyte_data, "$['mobile_verified']") as mobile_verified,
json_extract_scalar(_airbyte_data, "$['updated_at']") as updated_at,
json_extract_string_array(_airbyte_data, "$['qualification_ids']") as qualification_ids,
json_extract_scalar(_airbyte_data, "$['__v']") as __v,
json_extract_scalar(_airbyte_data, "$['segment_leadership']") as segment_leadership,
json_extract_scalar(_airbyte_data, "$['_id']") as _id,
json_extract_string_array(_airbyte_data, "$['category_ids']") as category_ids,
json_extract(_airbyte_data, "$['delivery_addresses']") as delivery_addresses,
json_extract(_airbyte_data, "$['image_details']") as image_details,
json_extract(_airbyte_data, "$['legacy_details']") as legacy_details,
json_extract(_airbyte_data, "$['mapped_organizations']") as mapped_organizations,
json_extract(_airbyte_data, "$['mapped_headquarters']") as mapped_headquarters
FROM goapptiv-data-lake.airbyte_test._airbyte_raw_DOCTORS

)

SELECT * FROM DOCTORS
