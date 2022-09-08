with raw_hosts as (
    select *
      from {{ source('airbnb', 'raw_hosts') }}
    )
select id as host_id,
       NAME as host_name,
       is_superhost,
       created_at,
       updated_at
  from raw_hosts