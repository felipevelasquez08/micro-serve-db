drop table if exists user;
drop table if exists product;
drop table if exists user_product;
drop table if exists report;

-- Crear la tabla "product"
CREATE TABLE product
(
    id    INT PRIMARY KEY,
    name  VARCHAR(255),
    stock INT
);

-- Crear la tabla "user_product"
CREATE TABLE user_product
(
    id         INT PRIMARY KEY,
    user_id    varchar(255),
    product_id INT,
    FOREIGN KEY (user_id) REFERENCES users_user (id),
    FOREIGN KEY (product_id) REFERENCES product (id)
);

-- Crear la tabla "report"
CREATE TABLE report
(
    id      INT PRIMARY KEY,
    user_id varchar(255),
    amount  INT,
    date    TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users_user (id)
);
