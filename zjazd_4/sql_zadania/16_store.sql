SELECT manufacturers.name, products.name, products.price FROM products
JOIN manufacturers ON products.manufacturer = manufacturers.code
WHERE price = (SELECT price FROM products WHERE manufacturer = manufacturers.code ORDER BY price DESC LIMIT 1);
-- price = (w nawiasie jest to podzapytanie do pytania)

SELECT manufacturers.name AS manufacturer_name,
       products.name AS product_name,
       products.price
FROM products JOIN manufacturers ON products.manufacturer = manufacturers.code
WHERE price = (SELECT MAX(price) FROM products WHERE manufacturer = manufacturers.code);
