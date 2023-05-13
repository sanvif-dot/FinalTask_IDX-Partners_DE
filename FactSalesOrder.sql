
CREATE TABLE FactSalesOrder (
  order_id INT PRIMARY KEY,
  customer_id INT,
  product_id INT,
  quantity INT,
  amount INT,
  status_id INT,
  order_date DATE
);
