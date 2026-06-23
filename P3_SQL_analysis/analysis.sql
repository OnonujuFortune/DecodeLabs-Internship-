SELECT *
FROM p1_cleaned_data
LIMIT 10;


-- Query 1: Overall Business Performance 
-- Purpose: Establish top-level KPIs as a baseline for all further analysis (total orders, revenue, and AOV)
-- Findings: 1,200 orders generated $1,264,748.96 in revenue with an AOV of $1,053.96. 
SELECT 
			COUNT(OrderID) AS Total_Orders,
            ROUND(SUM(TotalPrice), 2) AS Total_Revenue,
            ROUND(AVG(TotalPrice), 2) AS Average_Order_Value
FROM p1_cleaned_data;



-- Query 2: Revenue by Product 
-- Purpose: Identify which product drive most revenue and order volume across the dataset. 
-- Finding: Chair and Printer lead in total revenue. Phone has the lowest AOV and revenue. Distribution is relatively even across all & products (12% - 15.5% each). 
SELECT
			Product,
            COUNT(OrderID)  AS Total_Orders, 
            ROUND(SUM(TotalPrice), 2)   AS  Total_Revenue,
            ROUND(AVG(TotalPrice), 2)  AS  AOV
FROM p1_cleaned_data
GROUP BY Product
ORDER BY Total_Revenue DESC;




-- Query 3: Order Status Distribution
-- Purpose: Understand the breakdown of order outcomes and identify fulfilment problems. 
-- Finding: Only 19.3% of orders are delivered, cancelled (20.8%) and returned (20.6) = 41.4% of all ordes lost. 
SELECT 
		OrderStatus,
        COUNT(OrderID)  AS Order_Count,
        ROUND(COUNT(OrderID) * 100.0 / (SELECT COUNT(*) FROM p1_cleaned_data), 1) AS Percentage 
FROM p1_cleaned_data
GROUP BY OrderStatus
ORDER BY Order_Count DESC;



-- Query 4: Return Rare by Product
-- Purpose: Identify which products have disprportionately high return rates that may indicate quality or expectation issues. 
-- Finding: Tablet has the highest return rate at 24% (nearly 1 in 4 tablet orders is returned) chair is the lowest at 15.7%. 
SELECT 
		Product,
        COUNT(OrderID) AS Total_Orders,
        SUM(CASE WHEN OrderStatus = 'Returned' THEN 1 ELSE 0 END) AS Returned_Orders, 
        ROUND(
					SUM(CASE WHEN OrderStatus = 'Returned' THEN 1 ELSE 0 END) * 100.0
                    / COUNT(OrderID), 1
		) AS Return_Rate_Percent
FROM p1_cleaned_data
GROUP BY Product
ORDER BY Return_Rate_Percent DESC; 






-- Query 5: Revenue by Referral Source
-- Purpose: Determine which acquisition channels drive the most revenue and highest-value customers.
-- Finding: Instagram leads in both order volume and total revenue. Facebook attracts fewer orders but has the highest AOV -- idicating a higher-quality customer segment. 
SELECT 
		ReferralSource,
        COUNT(OrderID)   AS Total_Orders,
        ROUND(SUM(TotalPrice), 2)  AS Total_Revenue,
        ROUND(AVG(TotalPrice), 2) AS AOV
FROM p1_cleaned_data
GROUP BY ReferralSource
ORDER BY Total_Revenue DESC;



-- Query 6: Coupon  Code Efficiency  
-- Purpose: Assess whether coupon usage meaninfully increases basket size or drives revenue.
-- Finding: 'Freeship' has the highest AOV among coupon users. Customers with no coupon spend more on average than "WInter15" users. AOV gap across all groups <$35 - coupons have minimal impact on basket size. 
SELECT 
			CouponCode,
            COUNT(OrderID)  AS  Total_Orders,
            ROUND(SUM(TotalPrice), 2)  AS  Total_Revenue, 
            ROUND(SUM(TotalPrice), 2) AS AOV
FROM p1_cleaned_data
GROUP BY CouponCode
ORDER BY AOV DESC; 




-- Query 7: Payment Method Performance  
-- Purpose: Undestand payment preference and their relationships to order value and revenue. 
-- Finding: Credit card users have the highest AOV ($1,127.54). Debit card users have the lowest while online payments have the most orders but mid-range AOV. 
SELECT
			PaymentMethod,
            COUNT(OrderID)  AS  Total_Orders,
            ROUND(SUM(TotalPrice), 2)  AS Total_Revenue,
            ROUND(AVG(TotalPrice), 2)  AS AOV 
FROM p1_cleaned_data
GROUP BY PaymentMethod
ORDER BY Total_Revenue DESC; 



-- Query 8: Monthly Revenue Trend 
-- Purpose: Identify seasonal patterns and revenue trends across the 2023-2025 period. 
-- Finding: Revenue shows mont-to-month variability with a notable spike in mid-2024. No consistent upward growth trend - revenue remains relatively flat across the period. 
SELECT 
			DATE_FORMAT(Date, '%Y-%M')  AS Month,
            COUNT(OrderID)   AS  Total_Orders,
            ROUND(SUM(TotalPrice), 2)  AS  Monthly_Revenue
FROM p1_cleaned_data
GROUP BY DATE_FORMAT(Date, '%Y-%M') 
ORDER BY Month ASC; 


-- All findings are documented in the README.md 

















































