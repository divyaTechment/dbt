{{ config(
    materialized='table',
    post_hook=[
      "ALTER TABLE {{this}} ADD MEMBERSHIP_PLAN VARCHAR",
  
      "update  {{this}} set MEMBERSHIP_PLAN =
                case 
                when MEMBERSHIP_STATUS = 'Active' and TENURE_IN_MONTHS >=36 then 'Gold'
                when MEMBERSHIP_STATUS = 'Active' and TENURE_IN_MONTHS >=19 And TENURE_IN_MONTHS <36 then 'Silver'
                when  MEMBERSHIP_STATUS = 'Active' and TENURE_IN_MONTHS <=18 then 'Gold'
                end"
    ]
) }}
select * from VWE3.PUBLIC.PREMIUM_CUSTOMER