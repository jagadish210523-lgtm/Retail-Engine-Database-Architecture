USE mynew_db;

-- Creating a table for Customers

CREATE TABLE customers(
    customer_id INT NOT NULL,
    email VARCHAR(50) NOT NULL,
    name VARCHAR(50) NOT NULL,
    shipping_address VARCHAR(255) NOT NULL,
    CONSTRAINT pk_customers PRIMARY KEY(customer_id)
);

-- Creating a table for orders placed

CREATE TABLE orders(
    order_id INT NOT NULL,
    customer_id INT NOT NULL,
    order_date DATETIME NOT NULL,
    product_id INT NOT NULL,
    CONSTRAINT pk_orders PRIMARY KEY(order_id)
);

-- Creating a table for products available in the store

CREATE TABLE products(
    product_id INT NOT NULL,
    product_name VARCHAR(50),
    price DECIMAL(10,2),
    stock_quantity INT,
    CONSTRAINT pk_product PRIMARY KEY(product_id)
);