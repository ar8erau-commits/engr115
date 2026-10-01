userLength = input('What is the length of the rectangle? ');
userBreadth = input('What is the breadth of the rectangle? ')


[return1, return2] = rectangle(userLength, userBreadth)

function [area, perimeter] = rectangle (length, breadth)

% This functions will take in two input arguments, the length and the
% breadth of a rectangle, and return two output arguments, area and
% perimeter of the rectangle

area = length * breadth
perimeter = 2 * (length + width)

end

fprintf('The area is %0.2f \n', return1);
fprintf('The perimeter is %0.2f \n', return2);