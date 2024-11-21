SELECT *,CONCAT(campaign_key, '-', date_date) AS id_all, 
FROM {{ref('stg_raw__adwords')}}
UNION ALL 
SELECT *, CONCAT(campaign_key, '-', date_date) AS id_all,
FROM {{ref('stg_raw__bing')}}
UNION ALL 
SELECT *, CONCAT(campaign_key, '-', date_date) AS id_all,
FROM {{ref('stg_raw__criteo')}}
UNION ALL 
SELECT *, CONCAT(campaign_key, '-', date_date) AS id_all,
FROM {{ref('stg_raw__fb')}}