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