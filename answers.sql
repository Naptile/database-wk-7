--q1
-- Create a normalized 1NF table
SELECT 
    OrderID,
    CustomerName,
    TRIM(product) AS Product
FROM 
    ProductDetail,
    unnest(string_to_array(Products, ',')) AS product;


--q2
CREATE TABLE Orders AS
SELECT DISTINCT 
    OrderID, 
    CustomerName
FROM OrderDetails;

CREATE TABLE OrderItems AS
SELECT 
    OrderID,
    Product,
    Quantity
FROM OrderDetails;
