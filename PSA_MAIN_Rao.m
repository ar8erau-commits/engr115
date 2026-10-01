%{
Agamya Rao
Section 14
September 17th, 2026
PSA - Programmer Defined Functions

%}


clc
clear


lengthOfSideA = input('What is the length of side A? ');
lengthOfSideB = input('What is the length of side B? ');


lengthOfSideC = pythagoreanTheorem(lengthOfSideA, lengthOfSideB);
displayResult(lengthOfSideC)


%{
Sample run:

What is the length of side A? 39
What is the length of side B? 82
The hypotenuse of the triangle is 90.80 cm

%}