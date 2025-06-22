SELECT * FROM blinkit_data

SELECT Outlet_Location_Type,Item_Fat_Content, 
       CAST(SUM(Sales) AS DECIMAL (10,2)) AS Total_Sales ,
       CAST(AVG(Sales) AS DECIMAL (10,2))  AS Avg_Sales,
       COUNT(*) AS Number_of_Item,
       CAST(AVG(Rating) AS DECIMAL (10,1)) AS Avg_Rating
FROM blinkit_data
GROUP BY Outlet_Location_Type,Item_Fat_Content
ORDER BY Total_Sales DESC
