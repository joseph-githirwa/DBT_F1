{# replaces "\N" with null before casting to int8 #}
{% macro text_to_int8(str_num) -%}
cast(case when {{ str_num }} = '\N' then null else {{ str_num }} end as int8) 
{%- endmacro %}