{{ config(
   tags=["- Partitioned by pickup_datetime Cluster on affiliated_base_number"],
   partition_by={
       "field": "pickup_datetime",
       "data_type": "timestamp"
   },
   cluster_by=["affiliated_base_number"]
) }}
select * from {{ ref("dbt_taxis_persisted") }}