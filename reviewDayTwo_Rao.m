%{

Name: Agamya Rao
Email: RAOA4@my.erau.edu 
Date: Oct 8th, 2026
Course: ENGR 115 
Review Day 2

%}

% initial setups
clc
clear

% Hard Coded Inputs
priceUniversalStudios = 100;
priceMagicKingdom = 150;
priceSeaworldOrlando = 130;

% user input and validation
guests = input('How many people plan to visit the theme park? ');
while guests > 5 || guests < 1 || isempty(guests) || mod(guests,1) ~= 0
    fprintf('ERROR!! Please enter a number between 1 and 5 for guests!!');
    guests = input('How many people plan to visit the theme park? (Between 1-5) ');
end

% asks user for chosen theme park
for i= 1:guests
    themeParkChosen = input('\nChoose a theme park for the person: \n Enter 1 for Universal Studios \n Enter 2 for Magic Kingdom \n Enter 3 for Seaworld Orlando\n');
    ticketPrice(i) = themeParkSelector(themeParkChosen, i);
end

% reports total ticket value
totalTicketPrice = sum(ticketPrice);
fprintf(' The total ticket price for all parks is $%d. Have fun!', totalTicketPrice);

%{
How many people plan to visit the theme park? 2

Choose a theme park for the person: 
 Enter 1 for Universal Studios 
 Enter 2 for Magic Kingdom 
 Enter 3 for Seaworld Orlando
2
You have chosen Magic Kingdom for person 1. Their ticket costs $150.

Choose a theme park for the person: 
 Enter 1 for Universal Studios 
 Enter 2 for Magic Kingdom 
 Enter 3 for Seaworld Orlando
3
You have chosen Seaworld Orlando for person 2. Their ticket costs $130.
 The total ticket price for all parks is $280. Have fun!>> 
%}
