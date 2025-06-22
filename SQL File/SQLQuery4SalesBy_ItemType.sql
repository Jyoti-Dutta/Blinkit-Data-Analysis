SELECT * FROM blinkit_data

SELECT Item_Type, CAST(SUM(Sales) AS DECIMAL(10,2)) AS Total_Sales FROM blinkit_data
GROUP BY Item_Type
ORDER BY Total_Sales DESC

SELECT Item_Type, 
      CAST(SUM(Sales) AS DECIMAL(10,2)) AS Total_Sales ,
      CAST(AVG(Sales) AS DECIMAL (10,2))  AS Avg_Sales,
      COUNT(*) AS Number_of_Item,
      CAST(AVG(Rating) AS DECIMAL (10,1)) AS Avg_Rating
FROM blinkit_data    
GROUP BY Item_Type
ORDER BY Total_Sales DESC