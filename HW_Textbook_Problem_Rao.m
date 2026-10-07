%{
Name: Agamya Rao
Email: RAOA4@my.erau.edu
Date: October 7th, 2026
Course: ENGR 115 - Section 14
Assignment: HW_Textbook_Problem_Rao
Problem: 
The bookstore has hired you to write a program to calculate the total cost of textbooks. To
encourage in-store purchases, a discount wheel is offered for customers who buy more than
two books.
If a customer buys more than two books, they receive a random discount of: 10%, 20%, 30%, or
40%. The discount applies ONLY to the most expensive textbook.

outside help: I consulted Google and Matlab help forums to identify the max
function, the sum function, and the randi function to be the best fit for
this homework assignment.
%}

clc
clear

% Book price inputs from the user
totalbooks = input("How many books are you purchasing? ")';
for i = 1:totalbooks
    priceOfBook(i) = input("What is the price of the book? ");
end

% Calculations!!
undiscountedTotal = sum(priceOfBook);
randomDiscount = randi(4) * 10 ;
bookPricePostDiscount = (1 -randomDiscount / 100) * (max(priceOfBook));
discountedTotal = undiscountedTotal - (max(priceOfBook)) + bookPricePostDiscount;
discountAmount = (max(priceOfBook)) - bookPricePostDiscount;

% Reports
fprintf("\nThe subtotal is $%0.2f", undiscountedTotal);
fprintf("\nCongrats! You got a discount of %d percent!", randomDiscount);
fprintf("\nYour discount applies to your most expensive book, so the new price is $%0.2f", bookPricePostDiscount);
fprintf("\nThe total is %0.2f, saving $%0.2f", discountedTotal, discountAmount);

%{
Trial Run 1:

How many books are you purchasing? 5
What is the price of the book? 12
What is the price of the book? 25
What is the price of the book? 60
What is the price of the book? 56
What is the price of the book? 90

The subtotal is $243.00
Congrats! You got a discount of 10 percent!
Your discount applies to your most expensive book, so the new price is $81.00
The total is 234.00, saving $9.00>> 
%}


%{
Trial Run 2:

How many books are you purchasing? 3
What is the price of the book? 122
What is the price of the book? 133
What is the price of the book? 144

The subtotal is $399.00
Congrats! You got a discount of 20 percent!
Your discount applies to your most expensive book, so the new price is $115.20
The total is 370.20, saving $28.80>> 
%}
