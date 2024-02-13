{# replaces "\N" with null before casting milliseconds in numbers to timestamp #}
{% macro text_milli_to_timestamp(str_num) -%}
case when {{ str_num }} = '\N' then null else TIME '00:00:00' + cast({{ str_num }}  as int8)* INTERVAL '1 millisecond' end
{%- endmacro %}