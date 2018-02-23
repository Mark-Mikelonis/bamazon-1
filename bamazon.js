//require mysql and inquirer
var mysql = require('mysql');
var inquirer = require('inquirer');
require('console.table');

var connection = mysql.createConnection({
    host: "127.0.0.1",
    port: 306,
    user: "root",
    password: "",
    database: "Bamazon"
})

connection.connect(function(err) {
    if (err) throw err;

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
