DROP TABLE products_merchants;
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

CREATE TABLE products_merchants(
  id SERIAL8 PRIMARY KEY,
  product_id INT8 REFERENCES products(id) ON DELETE CASCADE,
  merchant_id INT8 REFERENCES merchants(id) ON DELETE CASCADE
);
