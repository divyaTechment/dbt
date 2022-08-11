
{% set sql_statement %}
    select STATES,EVENTS from {{ ref('converted_user') }}
{% endset %}

{%- set places = dbt_utils.get_query_results_as_dict(sql_statement) -%}

select
 {% for city in places['STATES'] | unique -%}
      sum(case when STATES = '{{ city }}' then 1 else 0 end) as users_in_{{ dbt_utils.slugify(city) }},
    {% endfor %}

     {% for eventName in places['EVENTS'] | unique -%}
            avg(Events) as  avg_in_{{ dbt_utils.slugify(eventName) }},
    {% endfor %}

    count(*) as total_total 

from {{ ref('converted_user') }} where YEAR=2021
group by CITY