%{
Name: Dr. Debarati Basu
Email: debarati.basu@erau.edu 
Date: Sept 16, 2026 
Course: EGR 115 - sections #
Assignment: HW - PDF
Problem: Develop a re-usable solution to help a customer determine how many 
packages to order and the total cost of the order.

Worked with: I worked with ............... and ............ to complete the
assignment
I received help from ........... and ....................
%}

clear % useful to clear your workspace and use new variables
clc % always clear command window before you start
close all % (optional) needed to close any opned graph or figures
commandwindow % make the command window the active location


% Starter code - do not delete it

fprintf('==================================================\n');
fprintf('          CATERING PACKAGE OPTIONS\n');
fprintf('==================================================\n');
fprintf('%-25s %-15s %-10s\n', ...
    'Package', 'Guests Served', 'Price');
fprintf('--------------------------------------------------\n');
fprintf('%-25s %-15d $%7.2f\n', ...
    'Classic Lunch Package', 10, 150.00);
fprintf('%-25s %-15d $%7.2f\n', ...
    'Deluxe Dinner Package', 15, 300.00);
fprintf('%-25s %-15d $%7.2f\n', ...
    'Appetizer Package', 20, 180.00);
fprintf('==================================================\n\n');



% Add your code here