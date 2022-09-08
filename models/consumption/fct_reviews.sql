{{ 
    config(
        materialized = 'incremental',
        on_schema_change = 'fail',
        transient = false
    )
}}

with dl_reviews as (
    select *
      from {{ ref('dl_reviews') }}
)

 select *
   from dl_reviews
  where review_text is not null

{% if is_incremental() %}
    and review_date > (select max(review_date) from {{ this }})
{% endif %}