DROP DATABASE IF EXISTS bamazon_db;
CREATE database bamazon_db;

USE bamazon_db;

CREATE TABLE products (
    item_id INTEGER AUTO_INCREMENT NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    department_name VARCHAR(100),
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INTEGER(10) NOT NULL,
    product_sales DECIMAL (10,2) DEFAULT 0.00,
    PRIMARY KEY (item_id)
);

    INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales)
    VALUES  ('Baseball bat', 'Sporting Goods','149.99','11', '0.00');

    INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales)
    VALUES  ('Gazebo', 'Outdoor Furniture','210.99','18', '0.00');

    INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales)
    VALUES  ('Glory Beenie Baby', 'Toys','9.99','17', '0.00');

    INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales)
    VALUES  ('Sony HD Television', 'Electronics','309.99','8', '0.00');

    INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales)
    VALUES  ('Thai Spices', 'Food','15.00','9', '0.00');

    INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales)
    VALUES  ('Candyland', 'Toys','9.99','7', '0.00');

    INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales)
    VALUES  ('Queenbed sheets', 'Bedroom','49.99','20', '0.00');

    INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales)
    VALUES ('Macbook Pro', 'Electronics', '1999.99','22', '0.00');

    INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales)
    VALUES ('James Patterson: Alex', 'Books','19.99','35', '0.00');

    INSERT INTO products (product_name, department_name, price, stock_quantity, product_sales)
    VALUES ('Garth Brooks Greatest Hits', 'Music','49.99','19', '0.00');

            SELECT * FROM products

    CREATE TABLE departments (
        department_id INTEGER (10) AUTO_INCREMENT NOT NULL,
        department_name VARCHAR (100) NOT NULL,
        over_head_costs DECIMAL (10,2),
        PRIMARY KEY (department_id)    
    );

    INSERT INTO departments (department_name, over_head_costs, total_sales)
    VALUES  ('Sporting Goods','80.00', '0.00');

    INSERT INTO departments (department_name, over_head_costs, total_sales)
    VALUES  ('Outdoor Furniture','100.00', '0.00');

    INSERT INTO departments (department_name, over_head_costs, total_sales)
    VALUES  ('Toys','150.00', '0.00'),

    INSERT INTO departments (department_name, over_head_costs, total_sales)
    VALUES  ('Books','80.00', '0.00'),

    INSERT INTO departments (department_name, over_head_costs, total_sales)
    VALUES  ('Music','30.00', '0.00');

    INSERT INTO departments (department_name, over_head_costs, total_sales)
    VALUES ('Electronics','145.00', '0.00');

    INSERT INTO departments (department_name, over_head_costs, total_sales)
    VALUES ('Bedroom','95.00', '0.00');

    INSERT INTO departments (department_name, over_head_costs, total_sales)
    VALUES ('Food','75.00', '0.00');

    SELECT * FROM departments

    
