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