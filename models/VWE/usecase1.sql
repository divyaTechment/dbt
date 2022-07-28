


{{ config(materialized='table') }}

{% if update %}
Select * ,
  CASE
    WHEN (RATING  = 5) THEN (  'Product quality is good and taste is good' )
    WHEN (RATING  = 4) THEN ( 'Safe On Time delivery' )
    WHEN (RATING =3) THEN (  'Taste is good')
    WHEN (RATING =2) THEN (   'Did not like the smell and taste')
    WHEN (RATING =1) THEN ('Delayed Shipment')
END  as remark from VWE_S3.PUBLIC.REVIEW_NEW
WHERE REMARKS_BY_UNHAPPY_CUSTOMERS IS NULL
{% else %}
Select *  from VWE_S3.PUBLIC.REVIEW_NEW
WHERE REMARKS_BY_UNHAPPY_CUSTOMERS IS NOT NULL
{% endif %}


