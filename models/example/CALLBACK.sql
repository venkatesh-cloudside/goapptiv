WITH 

{{config(materialized='table')}}

CALLBACK AS (

SELECT
json_extract_scalar(_airbyte_data, "$['_id']") as _id,
json_extract_scalar(_airbyte_data, "$['organization']") as organization,
json_extract_scalar(_airbyte_data, "$['org_id']") as org_id,
json_extract_scalar(_airbyte_data, "$['query']") as query,
json_extract_scalar(_airbyte_data, "$['auth_id']") as auth_id,
json_extract_scalar(_airbyte_data, "$['full_name']") as full_name,
json_extract_scalar(_airbyte_data, "$['mobile']") as mobile,
json_extract_scalar(_airbyte_data, "$['updated_at']") as updated_at,
json_extract_scalar(_airbyte_data, "$['created_at']") as created_at
FROM goapptiv-data-lake.airbyte_test._airbyte_raw_CALLBACK

)

SELECT * FROM CALLBACK
