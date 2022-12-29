WITH

{{config(materialized='table')}}

migrations AS (

SELECT
json_extract_scalar(_airbyte_data, "$['_id']") as _id,
json_extract_scalar(_airbyte_data, "$['migration']") as migration,
json_extract_scalar(_airbyte_data, "$['batch']") as batch,
FROM goapptiv-data-lake.airbyte_mongodb_doctor_mangement._airbyte_raw_migrations

)

SELECT * FROM migrations
