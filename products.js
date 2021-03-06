var mysql = require('mysql');
var inquirer = require('inquirer');

//global var options
var options = ['HomePod',
'iPhone XR',
'iPhone XS',
'Macbook Pro 13"',
'Apple Watch 4',
'iPad Pro',
'Apple TV 4k',
'Apple AirPods',
'DJI Mavic Pro',
'Belkin Charging Pad'];

//MySQL Connection Details
var connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: 'root',
    database: 'bamazon'
});

connection.connect(function(err){
    if (err) throw err;
    //Run function to prompt user
    productCatalog();
})


function productinStock(n) {
    console.log('Here is your order:' , '\n\n' , n , '\n\n' + 'Checking inventory of product now.....')
    //Here let's have conditions. For both, we'll display if the order is a flop or not.
    connection.query("SELECT * FROM products WHERE ?", { product_name: n.product}, function(err, res){
        if (res[0].stock_quanity >= n.units){
            console.log("\n" + "We have the inventory!");
            //Now deduct that inventory!
            var left = res[0].stock_quanity - n.units;
            connection.query('UPDATE products SET stock_quanity = ? WHERE product_name = ?', [left,n.product]);
            console.log("Remaining: " + left);
        }
        else {
            //We can't help them.
            console.log("\n"+ "Sorry " + n.product + " is no longer in stock.");
        }
        productCatalog();
    });
}


function productCatalog() {
    inquirer.prompt([
        {
        //Ideally list the inventory and allow the user to select the product from the list.
        name: "product",
        message: "What would you like to buy?",
        type: "list",
        choices: options
    },
    {
        name: "units",
        message: "How many units would you like to buy",
    }
    ]).then(function(answers) {
       productinStock(answers);
    })
}