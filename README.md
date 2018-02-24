## Bamazon

### Application Summary

Bamazon is an application that mimics a storefront where people have the option of purchasing a number of items. The comand-line based program is shown in two interfaces. One as the customer and one as the manager.

The program uses a third-party node modules, has its own modules, and connects to a MySQL to store and retrieve product and department information.

Bamazon uses the following node modules: cli-table, MySQL and inquirer which are dependencies in the package.json. To utilize these run the command:

#### npm install


### Customer Experience

To run the customer side of this interface in your terminal type:

#### node bamazon.js

+ Once you start you will be given a "Truman Show" welcome and asked to if you "Would like to take a peak at the inventory?"

+ Responding "Yes" will give you a list of the inventory. And a series of questions will be asked of you to see what you want to purchase?"
 
![alt text](https://github.com/holytoledo36/bamazon/blob/master/images/currentinventory.png)


+ After you decide what you want and the quantity, as long as there is enough available, you will be given a receipt with total price. Once confirmed you will be thanked for the purchase.

![alt text](https://github.com/holytoledo36/bamazon/blob/master/images/ordercompleted.png)

+ Other features of note: If you ask for a quantity higher than the available quantity, you will be unable to make the purchase at the time.

### Manager Experience

To run the manager side of this interface in your terminal type:

#### node bamazonManager.js

The Manager Side gives you four options:
 + View Products For Sale
 ![alt text](https://github.com/holytoledo36/bamazon/blob/master/images/manager-productsforsale.png)
 + View Low Inventory -- Which shows you which items have less than 5 quantity available
 ![alt text](https://github.com/holytoledo36/bamazon/blob/master/images/manager-lowinventory.png)

 + Add To Inventory
 
 ![alt text](https://github.com/holytoledo36/bamazon/blob/master/images/manager-addtoinventory.png)

 + Add New Product
  ![alt text](https://github.com/holytoledo36/bamazon/blob/master/images/manager-addnewproduct.png)




