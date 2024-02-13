{# replaces "\N" with null before casting text to double #}
{% macro text_to_double(str_num) -%}
case when {{ str_num }} = '\N' then null else CAST({{ str_num }} AS double precision) end
{%- endmacro %}