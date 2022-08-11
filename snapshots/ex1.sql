

{% snapshot ex1 %}
{{
    config(
      target_database='vwe3',
      target_schema='snapshots',
      unique_key='id',
      strategy='timestamp',
      updated_at='ORDER_DATE',
    )
}}

select * from VWE3.PUBLIC.ORD_SNAPSHOT

{% endsnapshot %}







