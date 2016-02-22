USER STORIES
=============

Version 1

```
As a member of staff
So that I can keep track of an order
I would like to enter each item of an order

As a member of staff
So that I can keep track of an order
I would like to track the quantity of each item on the order

As a member of staff
So that I can be efficient in my work
I would like to enter multiple quantities of an item

As a member of staff
So that I can correct a mistake
I would like to be able to remove an item from the order

As a member of staff
So that I can charge the customer the correct amount
I would like to know the cost of each item on the order

As a member of staff
So that I can charge the customer the correct amount
I would like to calculate the total cost of the order

As a customer
So that I understand what I am paying
I would like to see an itemised bill of my order

As a customer
So that I understand what I am paying
I would like to see how much tax I am paying
```

Price List
Order (add and remove items from the list)
Calculator (sum for each line, sum for total and tax)
Receipt ()



Till tech test
==============

*Instructions*: Please fork this repo and submit a pull request once you've finished. Then prepare for code review!

![a till](/images/till.jpg)

We want to sell tills to local hipster coffee shop who are finally embracing the 21st century. We need a new till to replace their vintage machines - unfortunately, hipster staff are too cool to learn a new system, so we need you to build something that they will understand.

Specification
-------------

This is what a sample receipt looks like:

![a receipt](/images/receipt.jpg)


Version 1
---------

Implement a system that contains the business logic to produce receipts similar to this, based on a `json` price list and test orders. A sample `.json` file has been provided with the list of products sold at this particular coffee shop.

Here are some sample orders you can try - whether you use this information is up to you:

> **Jane**  
> 2 x Cafe Latte  
> 1 x Blueberry Muffin  
> 1 x Choc Mudcake  
>
> **John**  
> 4 x Americano  
> 2 x Tiramisu  
> 5 x Blueberry Muffin  

Your receipt must calculate and show the correct amount of tax (in this shop's case, 8.64%), as well as correct line totals and total amount. Do not worry about calculating discounts or change yet. Consider what output formats may be suitable.

Version 2
---------

- Add functionality to take payment and calculate correct change.  
- Add functionality to handle discounts - in this example, a 5% discount on orders over $50, and a 10% muffin discount.

Version 3
---------

Implement an user interface that can actually be used as a till.

You may use whatever technologies you see fit.
