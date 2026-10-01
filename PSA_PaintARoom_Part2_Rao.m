
%{
Name: Agamya Rao
Email: RAOA4@erau.edu
Date: Sep 1, 2026
Course: ENGR 115 - sections 14
Assignment: PSA - paint a room soution
Problem: Develop a re-usable solution to figure out how much paint to buy
in gallons to paint a room based on the length, width, and height of the
walls in feet and the number of doors and windows.
%}

clear % useful to clear your workspace and use new variables
clc %always clear command window screens before you start
close all % (optional) needed to close any opened graphs or figures
commandwindow % make the commend mindow the active location

%%
% TRIAL RUN ONE:
roomLength = 12;
roomWidth = 10;
roomHeight = 10;
number_of_doors = 2;
number_of_windows = 4;

% Area of the Walls: 

lengthWalls = roomLength * roomWidth;

widthWalls = roomHeight * roomWidth;

totalWallArea = 2 * lengthWalls + 2 * widthWalls;

% Area of the Windows and Doors:

doorArea = (36 / 12) * (80 / 12) * number_of_doors;

windowArea = (24 / 12) * (24 / 12) * number_of_windows ;

doorAndWindowArea = doorArea + windowArea ;

% Area That Requires Paint:

areaToPaint = totalWallArea - doorAndWindowArea;

% Gallons of Paint needed: 

gallonsNeeded_trialOne = round(areaToPaint / 400)


%%
% TRIAL RUN TWO:
roomLength = 15;
roomWidth = 20;
roomHeight = 12;
number_of_doors = 1;
number_of_windows = 2;

% Area of the Walls: 

lengthWalls = roomLength * roomWidth;

widthWalls = roomHeight * roomWidth;

totalWallArea = 2 * lengthWalls + 2 * widthWalls;

% Area of the Windows and Doors:

doorArea = (36 / 12) * (80 / 12) * number_of_doors;

windowArea = (24 / 12) * (24 / 12) * number_of_windows ;

doorAndWindowArea = doorArea + windowArea ;

% Area That Requires Paint:

areaToPaint = totalWallArea - doorAndWindowArea;

% Gallons of Paint needed: 

gallonsNeeded_trialTwo = round(areaToPaint / 400)