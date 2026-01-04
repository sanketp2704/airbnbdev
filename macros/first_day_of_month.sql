{% macro first_day_of_month(date_col) %}
    date_trunc('month', {{ date_col }})
{% endmacro %}
