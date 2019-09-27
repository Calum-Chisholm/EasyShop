DROP TABLE purchases;
DROP TABLE stock;
DROP TABLE customers;
DROP TABLE merchants;
DROP TABLE products;


CREATE TABLE products(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE merchants(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE stock(
  id SERIAL8 PRIMARY KEY,
  product_id INT8 REFERENCES products(id) ON DELETE CASCADE,
  merchant_id INT8 REFERENCES merchants(id) ON DELETE CASCADE,
  price INT
);

CREATE TABLE customers(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  wallet INT
);

CREATE TABLE purchases(
  id SERIAL8 PRIMARY KEY,
  stock_id INT8 REFERENCES stock(id) ON DELETE CASCADE,
  customer_id INT8 REFERENCES customers(id) ON DELETE CASCADE,
  quantity INT
);
