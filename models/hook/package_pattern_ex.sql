{% set relations_to_drop = dbt_utils.get_relations_by_pattern(
    schema_pattern='new_staging_schema',
    table_pattern='USECASE3'
) %}

{% set sql_to_execute = [] %}

{{ log('Statements to run:', info=True) }}

{% for relation in relations_to_drop %}
    {% set drop_command %}
   {% endset %}
    {% do log(drop_command, info=True) %}
    {% do sql_to_execute.append(drop_command) %}
{% endfor %}