CREATE TABLE  customer(
                          customer_id VARCHAR(10) PRIMARY KEY ,
                          name VARCHAR(50) NOT NULL
);

INSERT INTO customer  (customer_id, name) VALUES
                                              ('C001', 'Buddika'),
                                              ('C002', 'Shanuka'),
                                              ('C003', 'Tharindu'),
                                              ('C004', 'Ravindaya'),
                                              ('C005', 'Muditha');

CREATE TABLE "user" (
                        username VARCHAR(100) PRIMARY KEY ,
                        name VARCHAR(200) NOT NULL ,
                        password VARCHAR(300) NOT NULL
);

INSERT INTO "user" (username, name, password) VALUES
                                                  ('U001','Kasun','kasun123'),
                                                  ('U002','Nimal','nimal123'),
                                                  ('U003','Ramesh','ramesh123'),
                                                  ('U004','Gayan','gayan123'),
                                                  ('U005','Sadun','sadun123');

CREATE TABLE "order"(
                        order_id VARCHAR(10)PRIMARY KEY,
                        date DATE NOT NULL,
                        customer_id VARCHAR(10)NOT NULL,
                        user_name VARCHAR(100)NOT NULL,
                        CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
                        CONSTRAINT fk_user FOREIGN KEY (user_name) REFERENCES "user"(username)

INSERT INTO "order"(order_id, "date", customer_id, user_name) VALUES
    ('OD001','2024-08-07','C001','U001'),
    ('OD002','2024-08-07','C002','U004'),
    ('OD003','2024-08-07','C003','U005'),
    ('OD004','2024-08-07','C004','U002'),
    ('OD005','2024-08-07','C005','U003');

CREATE TABLE item(
                     bar_code VARCHAR(50) PRIMARY KEY ,
                     stock INT NOT NULL ,
                     description VARCHAR(150) NOT NULL ,
                     price DECIMAL(9,2) NOT NULL
);

INSERT INTO item(bar_code, stock, description, price) VALUES
                                                          ('B001',10,'Key board',1250.00),
                                                          ('B002',10,'Mouse',750.00),
                                                          ('B003',10,'Head Set',4000.00),
                                                          ('B004',10,'Lap top',150000.00),
                                                          ('B005',10,'Laptop Cover',3200.00);

CREATE TABLE order_detail(
                             order_id VARCHAR(10),
                             bar_code VARCHAR(50),
                             price DECIMAL(9,2) NOT NULL ,
                             qty INT NOT NULL ,
                             CONSTRAINT pk_order_detail PRIMARY KEY (order_id,bar_code),
                             CONSTRAINT fk_order FOREIGN KEY (order_id) REFERENCES "order"(order_id),
                             CONSTRAINT fk_item FOREIGN KEY (bar_code) REFERENCES item(bar_code)
);




INSERT INTO order_detail (order_id, bar_code, price, qty) VALUES
                                                              ('OD001','B001',2500.00,2),
                                                              ('OD002','B002',750.00,1),
                                                              ('OD003','B003',1500.00,1),
                                                              ('OD004','B004',150000.00,1),
                                                              ('OD005','B005',6400.00,2);
