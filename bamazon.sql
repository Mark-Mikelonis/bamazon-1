DROP DATABASE IF EXISTS bamazon_db;
CREATE database bamazon_db;

USE bamazon_db;

DROP DATABASE IF EXISTS bamazon_db;
CREATE database bamazon_db;

USE bamazon_db;

CREATE TABLE products
(
    id INTEGER AUTO_INCREMENT NOT NULL,
    product VARCHAR(30) NOT NULL,
    department VARCHAR(30),
    price DECIMAL(10,2) NOT NULL,
    stock INTEGER (10) NOT NULL,
    PRIMARY KEY (id)
);

    INSERT INTO products
        (product,department,price,stock)
    VALUES
        ('Baseball bat', 'Sporting Goods', 149.99, 11);

    INSERT INTO products
        (product,department,price,stock)
    VALUES
        ('Gazebo', 'Outdoor Furniture', 210.99, 18);

    INSERT INTO products
        (product,department,price,stock)
    VALUES
        ('Glory Beenie Baby', 'Toys', 9.99, 17);

    INSERT INTO products
        (product,department,price,stock)
    VALUES
        ('Sony HD Television', 'Electronics', 309.99, 8);

    INSERT INTO products
        (product,department,price,stock)
    VALUES
        ('Thai Spices', 'Food', 15.00, 9);

    INSERT INTO products
        (product,department,price,stock)
    VALUES
        ('Candyland', 'Toys', 9.99, 7);

    INSERT INTO products
        (product,department,price,stock)
    VALUES
        ('Queenbed sheets', 'Bedroom', 49.99, 20);

    INSERT INTO products
        (product,department,price,stock)
    VALUES
        ('Macbook Pro', 'Electronics', 1999.99, 22);

    INSERT INTO products
        (product,department,price,stock)
    VALUES
        ('James Patterson: Alex', 'Books', 19.99, 35);

    INSERT INTO products
        (product,department,price,stock)
    VALUES
        ('Garth Brooks Greatest Hits', 'Music', 49.99, 19);

    SELECT *
    FROM products
