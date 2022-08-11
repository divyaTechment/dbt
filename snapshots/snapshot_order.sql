

{% snapshot snapshot_order %}
{{
    config(
      target_database='vwe3',
      target_schema='snapshots',
      unique_key='ORDER_ID',
      strategy='timestamp',
      updated_at='ORDER_DATE',
    )
}}

select * from VWE3.PUBLIC.ORDER_TABLE

{% endsnapshot %}







