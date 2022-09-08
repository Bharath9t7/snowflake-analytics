with dl_listings as (
    select * 
      from {{ ref('dl_listings') }}
)

select listing_id,
       listing_name,
       room_type,
       case
         when minimum_nights = 0 then 1
         else minimum_nights
       end as minimum_nights,
       host_id,
       REPLACE(price_str, '$') :: NUMBER(10,2) as price,
       created_at,
       updated_at
  from dl_listings