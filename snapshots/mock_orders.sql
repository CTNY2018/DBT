{% set new_schema = target.schema + '_snapshot' %}
{{
    config(
      target_database='dbtcis44000hw3',
      target_schema=new_schema,
      unique_key='order_id',

      strategy='timestamp',
      updated_at='updated_at',
    )
}}
select * from dbtcis44000hw3.{{new_schema}}.mock_orders