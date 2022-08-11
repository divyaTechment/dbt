


select
order_id,
{% for COUNTRY in ["USA", "Windsor_Vineyards"] %}
sum(case when COUNTRY = '{{COUNTRY}}' then "Price($)" end) as {{COUNTRY}}_amount,
{% endfor %}
sum("Price($)") as total_Price
from {{ ref('wholesale_tbl') }}
group by 1

