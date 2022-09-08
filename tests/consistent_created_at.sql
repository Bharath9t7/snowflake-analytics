 -- this test is to make sure that there is no review that is submitted before its listing was created

select * 
  from {{ ref('dim_listings') }} l
 INNER 
  JOIN {{ ref('fct_reviews') }} r
    on l.listing_id = r.listing_id
 WHERE l.created_at >= r.review_date
 