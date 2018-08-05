SELECT AVG(Price) FROM Products
JOIN Manufacturers ON Products.Manufacturer = Manufacturers.Code
WHERE Manufacturers.Code = 2;
