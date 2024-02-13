{# replaces "\N" with null before casting time string to timestamp #}
{% macro text_sec_to_timestamp(str_time) -%}
case when {{ str_time }} = '\N' then null else TO_TIMESTAMP({{ str_time }}, 'SS.MS')::TIME end
{%- endmacro %}