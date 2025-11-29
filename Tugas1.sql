USE RetailStoreDB;

-- jawaban 1
SELECT ProductID, SUM (LineTotal) AS TotalUang
FROM Sales.SalesOrderDetail
GROUP BY ProductID;

-- jawaban 2
SELECT ProductID, SUM (LineTotal) AS TotalUang
FROM Sales.SalesOrderDetail
WHERE OrderQty >= 2
GROUP BY ProductID;

--jawaban 3
SELECT ProductID, SUM (LineTotal) AS TotalUang
FROM Sales.SalesOrderDetail
WHERE OrderQty >= 2
GROUP BY ProductID;

-- jawaban 4
SELECT ProductID, SUM (LineTotal) AS TotalUang
FROM Sales.SalesOrderDetail
WHERE OrderQty >= 2
GROUP BY ProductID
HAVING SUM (LineTotal) > 50000;

-- jawaban 5 
SELECT ProductID, SUM (LineTotal) AS TotalUang
FROM Sales.SalesOrderDetail
WHERE OrderQty >= 2
GROUP BY ProductID
HAVING SUM (LineTotal) > 50000
ORDER BY TotalUang DESC;

-- jawaban 6 
SELECT TOP 10 ProductID, SUM (LineTotal) AS TotalUang
FROM Sales.SalesOrderDetail
WHERE OrderQty >= 2
GROUP BY ProductID
HAVING SUM (LineTotal) > 50000
ORDER BY TotalUang DESC;