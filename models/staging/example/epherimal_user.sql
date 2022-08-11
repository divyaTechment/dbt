{{ config(materialized='ephemeral') }}

SELECT * FROM vwe.public.converted_user