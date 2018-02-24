DROP DATABASE IF EXISTS bamazon_db;
CREATE database bamazon_db;

USE bamazon_db;

CREATE TABLE products (
    item_id INT(10) AUTO_INCREMENT NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    department_name VARCHAR (100) NOT NULL,
    price DECIMAL (10,2) NOT NULL,
    stock_quantity INT (100) NOT NULL,
    PRIMARY KEY (item_id)
);

Select * from products;

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES  ("Baseball bat", "Sporting Goods", "149.99", 11),
        ("Gazebo", "Outdoor Furniture", "210.99", 18),
        ("Glory Beenie Baby", "Toys", "9.59", 17),
        ("Sony HD Television", "Electronics","309.80", 8),
        ("Thai Spices", "Food", "15.00", 9),
        ("Candyland", "Toys", "9.99", 7),
        ("Queenbed sheets", "Bedroom","49.99", 20),
        ("Macbook Pro", "Electronics", "1999.99", 22),
        ("James Patterson: Alex", "Books","19.99", 35),
        ("Garth Brooks Greatest Hits", "Music","49.99", 19);
        ("Iphone 10", "Electronics", "999.99", 10)
