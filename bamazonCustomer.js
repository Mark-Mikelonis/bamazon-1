//require mysql and inquirer
var mysql = require("mysql");
var inquirer = require("inquirer");
var Table = require ("cli-table")
//database connection info
var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "",
    database: "bamazon_db"
});
//establish connection with database
connection.connect(function(err) {
    if (err) throw err;
});

//initializes app
initialize();

//functions//

function initialize() {
    //create new table
    var productTable =  new Table ({
        head: ["Product Id", "Product Name", "Price"],
        colWidths: [10, 40, 10]
    });
    //select all data from proucts table
    connection.query("SELECT * FROM products", function (err, results) {
        if (err) throw err;
        //logs info necessary for customer
        console.log("Check out the items we have for sale!");
        //variables to store column data
        for (var i = 0; i < res.length; i++) {
            var prodId = res[i].item_id;
        }

    connection.query(SELECt)
}




var table = new Table({
    head:['Item ID', 'Product Name','Department','Price','Available Stock'],
    colWidths: [10,40,20,15,20]
});

var quantity;

connection.query("SELECT * FROM products", function(err, results) {
  console.log('');
  console.table(results);
  start();  
});

var start = function () {

    inquirer.prompt ([
        {
            type: 'input',
            name: 'selection',
            message: 'Type the number that matches the product you want.',
            validate: function(value) {
                if (isNaN(value) === false) {
                    return true;
                } else {
                    return false;
                }
            }
        },
        {
            type: 'input',
            name: 'quantity',
            message: 'How many would you like to order?',
            validate: function(value) {

                if (isNan(value) === false){
                    return true;
                } else {
                    return false;
                }
            }
        }
    ]).then(function (answers) {
        var item = answers.selection;
        quantity = parseInt(answers.quantity);

        var item = answers.selection;
        quantity - parseInt(answers.quantity);

        var userSelection = availability(item);
    });
}

function availability(item) {
    //check amount of stock v amount ordered
    connection.query('SELECT * FROM products WHERE id =?', item, function(err, results) {
        if (err) throw err;

        if(quantity > results[0].stock) {
        console.log("Sorry, your order exceeds are stock amount.");
        start();
        } else {
            connection.query('UPDATE products SET ? WHERE ?',
            [
                {
                    stock: results[0].stock - quantity
                },
                {
                    id: item
                }
            ]
        );
        console.log('Congratulations, you purchased a ' + results[0].product);
        console.log('Your order total is: ' + parseFloat(quantity * results[0].price));
        start();

    }

    })
}
