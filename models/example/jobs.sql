WITH 

{{config(materialized='table')}}

jobs AS (

SELECT
json_extract_scalar(_airbyte_data, "$['_id']") as _id,
json_extract_scalar(_airbyte_data, "$['queue']") as queue,
json_extract_scalar(_airbyte_data, "$['attempts']") as attempts,
json_extract_scalar(_airbyte_data, "$['reserved_at']") as reserved_at,
json_extract_scalar(_airbyte_data, "$['available_at']") as available_at,
json_extract_scalar(_airbyte_data, "$['created_at']") as created_at,
json_extract(_airbyte_data, "$['payload']") as payload
FROM goapptiv-data-lake.airbyte_mongodb_doctor_mangement._airbyte_raw_jobs

)

SELECT * FROM jobs
