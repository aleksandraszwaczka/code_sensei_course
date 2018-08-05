SELECT Products.Name, Products.Price, Manufacturers.Name FROM Products
JOIN Manufacturers ON Manufacturers.Code = Products.Manufacturer;
