%{
Name: Agamya Rao
Email: RAOA4@erau.edu
Date: Sep 10, 2026
Course: ENGR 115 - Section 14
Assignment: PSA - Review 1

%% 
Task 1: fix the mistakes to calculate the area and circumference of a
circle
%}

clear 
clc 
close all 
commandwindow

radius = input('Enter the radius of the circle: ','s');
% the variable r does not exist, it must be radius
area = pi * radius^2;
circumference = 2 * pi * radius;
%{
There is no placeholder within the fprintf, and the function is missing
the f in the beginning. I also added in the 0.2 to limit the decimal places
and added units at the end to make it cleaner and more user-friendly.
%}

fprintf('The area is %0.2f units. \n' ,area)
fprintf('The circumference is: %0.2f units',circumference)


%%
%Task 2: Create code to calculate the cost of a road trip

clc
clear

% Inputs:
milesPerGallon = input('What is the MPG(miles per gallon) of your car? ');

% Calculations
costPerGallon = rand + 3;
tripDistance = round(rand * 20 + 50);
totalGas = tripDistance / milesPerGallon;
tripCost = totalGas * costPerGallon;

% Money:
Dollars = floor(tripCost / 1);
Cents = floor(100 * (mod(tripCost,1)));

% Result:
fprintf ('The total cost of your %d mile trip when gas is $%0.2f per gallon, is %d dollars and %d cents \n',tripDistance, costPerGallon, Dollars, Cents)
