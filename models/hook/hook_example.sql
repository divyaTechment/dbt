{{
  config(
    pre_hook=[
     "Alter table VWE3.PUBLIC.PREMIUM_CUSTOMER_DATA ADD MEMBERSHIP_PLAN varchar"
    ],
    post_hook=[
      "UPDATE  VWE3.PUBLIC.PREMIUM_CUSTOMER_DATA
SET  MEMBERSHIP_PLAN =CASE
    WHEN (TENURE_IN_MONTHS >=21) THEN ('Gold')
    WHEN (TENURE_IN_MONTHS >12 and TENURE_IN_MONTHS <= 20) THEN ('Silver' )
    WHEN (TENURE_IN_MONTHS <=12) THEN ('Bronze')
END "
    ]
  )
}}

select * from VWE3.PUBLIC.PREMIUM_CUSTOMER_DATA
