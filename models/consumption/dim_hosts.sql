with dl_hosts as (
    select *
      from {{ ref('dl_hosts') }}
)

select host_id,
       NVL(host_name,'Anonymous') as host_name,
       is_superhost,
       created_at,
       updated_at
  from dl_hosts