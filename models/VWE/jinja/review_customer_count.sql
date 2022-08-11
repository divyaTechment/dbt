select
  PRODUCT_ID,
{% for rate in [1,2,3,4,5] %}
  sum(case when rating = {{ rate }} then 1 else 0 end) as users_in_{{ rate }},
{% endfor %}
  count(*) as total
from {{ ref('review_data') }}
group by PRODUCT_ID

