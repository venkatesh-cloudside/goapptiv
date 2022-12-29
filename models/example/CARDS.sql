WITH

{{config(materialized='table')}}

CARDS AS(

SELECT
json_extract_scalar(_airbyte_data, "$['_id']") as _id,
json_extract_scalar(_airbyte_data, "$['type']") as type,
json_extract_scalar(_airbyte_data, "$['org_code']") as org_code,
json_extract_scalar(_airbyte_data, "$['dept_code']") as dept_code,
json_extract_scalar(_airbyte_data, "$['subscription']") as subscription,
json_extract_scalar(_airbyte_data, "$['share_message']") as share_message,
json_extract_string_array(_airbyte_data, "$['speciality_ids']") as speciality_ids,
json_extract_string_array(json_extract_Scalar(_airbyte_data, '$.tags_aibyte_transform'),'$.') as tags,
json_extract(_airbyte_data, "$['organization']") as organization,
json_extract_scalar(_airbyte_data, "$['title']") as title,
json_extract_scalar(_airbyte_data, "$['description']") as description,
json_extract_scalar(_airbyte_data, "$['content']") as content,
json_extract_string_array(_airbyte_data, "$['slider_images']") as slider_images,
json_extract_array(_airbyte_data, "$['actions']") as actions,
json_extract_scalar(_airbyte_data, "$['updated_at']") as updated_at,
json_extract_scalar(_airbyte_data, "$['__v_aibyte_transform']") as __v,
json_extract_string_array(_airbyte_data, "$['category_ids']") as category_ids,
json_extract_scalar(_airbyte_data, "$['status']") as status

FROM goapptiv-data-lake.airbyte_test._airbyte_raw_CARDS

)

SELECT * FROM CARDS
