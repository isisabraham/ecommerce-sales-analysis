SELECT  
    p.ProductName,  
    SUM(s.SalesQuantity) AS TotalSold,  
    SUM(s.SalesAmount) AS TotalRevenue  
FROM FactSales s  
JOIN DimProduct p ON s.ProductKey = p.ProductKey  
GROUP BY p.ProductName  
ORDER BY TotalRevenue DESC;

