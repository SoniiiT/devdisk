CREATE DATABASE IF NOT EXISTS example;
USE example;

CREATE TABLE IF NOT EXISTS User (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(64) NOT NULL,
    last_name VARCHAR(64) NOT NULL,
    email VARCHAR(64) NOT NULL,
    password VARCHAR(128) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Addresses (
    id INT NOT NULL AUTO_INCREMENT,
    plz VARCHAR(128) NOT NULL,
    city VARCHAR(128) NOT NULL,
    street VARCHAR(128) NOT NULL,
    PRIMARY KEY (id),
    user_id INT, FOREIGN KEY (fk_user_id) REFERENCES User(id)
);

CREATE TABLE IF NOT EXISTS Products (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(128) NOT NULL,
    description VARCHAR(255) NOT NULL,
    current_price FLOAT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Orders (
    id INT NOT NULL AUTO_INCREMENT,
    product_id INT, FOREIGN KEY (fk_product_id) REFERENCES Products(id),
    user_id INT, FOREIGN KEY (fk_user_id) REFERENCES User(id),
    addresses_id INT, FOREIGN KEY (fk_address_id) REFERENCES Addresses(id),
    order_amount INT NOT NULL,
    order_price FLOAT NOT NULL,
    order_date datetime NOT NULL,
    shipping_date datetime NOT NULL,
    PRIMARY KEY (id),
);
