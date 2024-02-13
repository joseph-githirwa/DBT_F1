{# replaces "\N" with null #}
{% macro nan_to_null(val) -%}
case when {{ val }} = '\N' then null else {{ val }} end
{%- endmacro %}