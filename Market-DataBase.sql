------------ Products ---------- Section - 1 ------
/*
CREATE TABLE "products" (
  "id" SERIAL PRIMARY KEY,
  "category" VARCHAR(25),
  "name" VARCHAR(50) NOT NULL,
  "price" FLOAT NOT NULL,
  "stock_quantity" INT NOT NULL
);
*/

-- Inserting a sample row into the "products" table
--INSERT INTO products (category, name, price, stock_quantity) VALUES ('Dairy', 'Judi Milk', 3.50, 12);

-- Deleting a row from the "products" table based on the id
--DELETE FROM products WHERE id = 5;

-- Selecting all rows from the "products" table
--SELECT * FROM products;

-------- Customers ----- Section - 2 ------
/*
CREATE TABLE "customers" (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(50) NOT NULL,
  "telephone_number" INT,
  "note" VARCHAR(100)
);
*/

-- Renaming the "telephone_number" column to "phone_number"
-- TABLE customers RENAME COLUMN "telephone_number" TO "phone_number";

-- Selecting all rows from the "customers" table
--SELECT * FROM costomers;

-------- Vendors -------- Section - 3 ------
/*
CREATE TABLE "vendors" (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(50),
  "email" VARCHAR(50),
  "telephone_number" INT NOT NULL
);
*/

-- Selecting all rows from the "vendors" table
--SELECT * FROM vendors;

------ Transactions ---- Section - 4 ------
/*
CREATE TABLE "transactions" (
  "id" SERIAL PRIMARY KEY,
  "transaction_id" INT NOT NULL,
  "customer_id" INT,
  "product_id" INT,
  "transaction_date" DATE NOT NULL,
  "total_amount" FLOAT NOT NULL,
  FOREIGN KEY ("customer_id") REFERENCES customers("id"),
  FOREIGN KEY ("product_id") REFERENCES products("id")
);
*/

-- Selecting all rows from the "transactions" table
--SELECT * FROM transactions;

----- Transaction Details ------ Section - 5 -------
/*
CREATE TABLE "transaction_details" (
  "id" SERIAL PRIMARY KEY,
  "transaction_id" INT NOT NULL,
  "product_id" INT NOT NULL,
  "quantity" INT,
  "unit_price" FLOAT NOT NULL,
  FOREIGN KEY ("transaction_id") REFERENCES transactions("id"),
  FOREIGN KEY ("product_id") REFERENCES products("id")
);
*/

-- Selecting all rows from the "transaction_details" table
--SELECT * FROM transaction_details;
