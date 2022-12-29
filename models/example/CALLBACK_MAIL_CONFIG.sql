WITH 

{{config(materialized='table')}}

CALLBACK_MAIL_CONFIG AS (

SELECT
json_extract_scalar(_airbyte_data, "$['_id']") as _id,
json_extract_scalar(_airbyte_data, "$['email_to']") as email_to,
json_extract_scalar(_airbyte_data, "$['email_to_name']") as email_to_name,
json_extract_scalar(_airbyte_data, "$['email_cc']") as email_cc,
json_extract_scalar(_airbyte_data, "$['org_name']") as org_name
FROM goapptiv-data-lake.airbyte_test._airbyte_raw_CALLBACK_MAIL_CONFIG

)

SELECT * FROM CALLBACK_MAIL_CONFIG
