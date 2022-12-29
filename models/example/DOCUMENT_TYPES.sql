WITH 

{{config(materialized='table')}}

DOCUMENT_TYPES AS (

SELECT
json_extract_scalar(_airbyte_data, "$['_id']") as _id,
json_extract_scalar(_airbyte_data, "$['name']") as name,
json_extract_string_array(_airbyte_data, "$['supported_mime_types']") as supported_mime_types,
json_extract_scalar(_airbyte_data, "$['storage_base_path']") as storage_base_path,
json_extract_scalar(_airbyte_data, "$['max_size']") as max_size
FROM goapptiv-data-lake.airbyte_test._airbyte_raw_DOCUMENT_TYPES

)

SELECT * FROM DOCUMENT_TYPES
