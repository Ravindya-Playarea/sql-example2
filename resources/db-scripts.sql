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

