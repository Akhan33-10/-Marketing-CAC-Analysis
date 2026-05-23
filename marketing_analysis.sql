USE marketing_analysis;
SELECT * FROM marketing_data ;
SELECT ROUND(AVG(cac),2) avg_cac FROM marketing_data ;
SELECT SUM(marketing_spend) total_spend,
SUM(NEW_CUSTOMERS) total_customer,
ROUND(SUM(marketing_spend)/SUM(new_customers),2) as overall_cac FROM marketing_data;
SELECT marketing_channel , count(*) as total_campaign ,SUM(new_customers) total_customer ,SUM(marketing_spend) total_spending,
ROUND(AVG(CAC),2) as avg_cac FROM marketing_DATA group by marketing_channel ORDER BY avg_cac;
SELECT region, COUNT(*) as total_campaign , SUM(new_customers) total_customer, ROUND(AVG(cac),2) avg_cac,ROUND( SUM(revenue_generated),2) total_revenu
FROM marketing_data GROUP BY region ORDER BY avg_cac;
SELECT campaign_status ,COUNT(*) as total_campaign , SUM(new_customers) total_customer, ROUND(AVG(cac),2) avg_cac ,
ROUND(AVG(ltv_cac_ratio),2) avg_ltv_cac, SUM(new_customers) total_customer , ROUND(SUM(revenue_generated),2) total_revenue
FROM marketing_data GROUP BY campaign_status ORDER BY avg_ltv_cac;
SELECT product_category , COUNT(*) total_campaign , SUM(new_customers) total_customer , 
ROUND(AVG(cac),2) avg_cac , ROUND(SUM(revenue_generated),2) total_revenue , ROUND(AVG(ltv_cac_ratio),2) avg_ltv_cac 
FROM  marketing_data GROUP BY product_category ORDER BY avg_ltv_cac;
SELECT month ,year ,COUNT(*) total_campaign , SUM(new_customers) total_customer , ROUND(AVG(cac),2) avg_cac,
ROUND(SUM(revenue_generated),2) total_revenue FROM marketing_data GROUP BY month,year ORDER BY month, year;







