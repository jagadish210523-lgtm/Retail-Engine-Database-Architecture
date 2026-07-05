USE mynew_db;
INSERT INTO customers(customer_id,email,name,shipping_address)
VALUES
    (1,'aravind.k@email.com','Aravind Kumar','123 Metro road,Bengaluru,5160001'),
    (2,'priya.sharma@email.com','Priya Sharma','45 Park Avenue,Mumbai,400001'),
    (3,'rohit.singh@email.com','Rohit Singh','78 Green Glen,New Delhi,110001');

INSERT INTO products(product_id,product_name,price,stock_quantity)
VALUES
    (101,'Wireless Mouse',1250.00,50),
    (102,'Mechanical Keyboard',3499.99,25),
    (103,'USB-C Adapter Hub',850.50,100),
    (104,'Ergonomic Laptop Stand',1999.00,15);

INSERT INTO orders(order_id,customer_id,order_date,product_id)
VALUES
    (5001,1,'2026-07-01 10:15:00',101),
    (5002,2,'2026-07-02 14:30:22',102),
    (5003,1,'2026-07-03 09:05:11',103),
    (5004,3,'2026-07-05 11:20:00',101);

SELECT * FROM products