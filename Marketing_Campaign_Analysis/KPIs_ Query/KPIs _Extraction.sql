SELECT * FROM marketing_campaign_analysis.marketing_campaigns;

SELECT * FROM marketing_campaigns LIMIT 10;

-- 1.Campaign Performance Overview 

SELECT 
    COUNT(campaign_id) AS total_campaigns,
    
    ROUND(SUM(acquisition_cost),2) AS total_spend,
    
    SUM(clicks) AS total_clicks,
    
    SUM(impressions) AS total_impressions,
    
    ROUND(
        AVG(conversion_rate) * 100,
        2
    ) AS avg_conversion_rate_percent,
    
    ROUND(AVG(roi),2) AS avg_roi

FROM marketing_campaigns;


SELECT 
    channel_used,
    
    COUNT(*) AS total_campaigns,
    
    ROUND(SUM(acquisition_cost),2) AS total_spend,
    
    SUM(clicks) AS total_clicks,
    
    ROUND(
        AVG(conversion_rate) * 100,
        2
    ) AS avg_conversion_rate_percent,
    
    ROUND(AVG(roi),2) AS avg_roi

FROM marketing_campaigns
GROUP BY channel_used
ORDER BY avg_roi DESC;

SELECT 
    campaign_type,
    
    ROUND(SUM(acquisition_cost),2) AS total_cost,
    
    ROUND(
        AVG(conversion_rate) * 100,
        2
    ) AS avg_conversion_rate_percent,
    
    ROUND(AVG(roi),2) AS avg_roi

FROM marketing_campaigns
GROUP BY campaign_type
ORDER BY total_cost DESC;

SELECT 
    channel_used,
    
    SUM(clicks) AS total_clicks,
    
    SUM(impressions) AS total_impressions,
    
    ROUND(
        (SUM(clicks) * 100.0 / SUM(impressions)),
        2
    ) AS ctr_percent,
    
    ROUND(AVG(engagement_score),2) AS avg_engagement_score

FROM marketing_campaigns
GROUP BY channel_used
ORDER BY ctr_percent DESC;

SELECT 
    company,
    
    ROUND(SUM(acquisition_cost),2) AS total_investment,
    
    ROUND(AVG(roi),2) AS avg_roi,

    CASE
        WHEN AVG(roi) >= 7 THEN 'High Performing'
        WHEN AVG(roi) >= 5 THEN 'Moderate Performing'
        ELSE 'Low Performing'
    END AS performance_category

FROM marketing_campaigns
GROUP BY company
ORDER BY avg_roi DESC;
   