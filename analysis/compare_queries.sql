{% set old_etl_relation=ref('customer_orders_part2') %} 

{% set dbt_relation=ref('fct_customers_orders_part2') %} 

 {{ 

audit_helper.compare_relations(
        a_relation=old_etl_relation,
        b_relation=dbt_relation,
        primary_key="order_id"
    ) }}