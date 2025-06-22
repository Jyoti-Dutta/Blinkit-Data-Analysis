SELECT * FROM blinkit_data

SELECT CAST(SUM(Sales)/1000000 AS DECIMAL(10,2)) AS Total_Sales_Million 
FROM blinkit_data

SELECT CAST(AVG(Sales) AS int)AS Avg_Sales
FROM blinkit_data

SELECT COUNT(*) AS No_Of_Item
FROM blinkit_data

SELECT CAST(AVG(Rating) AS decimal(10,1)) AS Avg_Rating
FROM blinkit_data