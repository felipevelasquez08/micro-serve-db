-- Crear la tabla "user"
CREATE TABLE user
(
    id       INT PRIMARY KEY,
    name     VARCHAR(255),
    email    VARCHAR(255),
    password VARCHAR(255)
);

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
    user_id    INT,
    product_id INT,
    FOREIGN KEY (user_id) REFERENCES user (id),
    FOREIGN KEY (product_id) REFERENCES product (id)
);

-- Crear la tabla "report"
CREATE TABLE report
(
    id      INT PRIMARY KEY,
    user_id INT,
    amount  INT,
    date    TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES user (id)
);
