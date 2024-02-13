{# replaces "\N" with null before casting time string to timestamp #}
{% macro text_date_time_to_timestamp(str_date, str_time) -%}
case 
    when {{ str_date }} = '\N' or {{ str_time }} = '\N' then null 
    else ({{ str_date }}  || ' ' || {{ str_time }} )::timestamp 
    end
{%- endmacro %}