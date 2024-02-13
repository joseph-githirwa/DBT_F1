{# replaces "\N" with null before casting milliseconds in numbers to timestamp #}
{% macro int_milli_to_timestamp(str_num) -%}
TIME '00:00:00' + cast({{ str_num }}  as int8)* INTERVAL '1 millisecond'
{%- endmacro %}