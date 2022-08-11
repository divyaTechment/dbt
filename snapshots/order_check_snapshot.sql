{% snapshot review_check_snapshot %}

    {{
        config(
          target_schema='snapshots',
          strategy='check',
          unique_key='ORDER_ID',
          check_cols='all',
        )
    }}

    select * from ORDER_TABLE

{% endsnapshot %}