SELECT * FROM blinkit_data
SELECT Outlet_Size,
      CAST(SUM(Sales) AS DECIMAL (10,2)) AS Total_Sales, 
      CAST((SUM(Sales)*100/SUM(SUM(Sales)) OVER()) AS DECIMAL (10,2)) AS Sales_Percentage
FROM blinkit_data 
GROUP BY Outlet_Size
ORDER BY Total_Sales DESC