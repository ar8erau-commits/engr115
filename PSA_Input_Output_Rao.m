
%{
Name: Agamya Rao
Email: RAOA4@erau.edu
Date: Sep 3, 2026
Course: ENGR 115 - sections 14
Assignment: PSA - User Input and Output

Problem statement: 
You have been tasked to develop a script file that gets user inputs and print out data of a weather station on campus. 
Use 'input' function to get the following data from an user.
                Location: Daytona Beach, FL
                Temperature: 26 degrees Celsius
                Relative Humidity: 32%
                Wind Speed: 2 m/s
                Wind direction: East
        2. Hardcode code the following data:
                Conditions: Partly Cloudy
        3. Convert the above Celsius temperature to Farenheit and save it in a variable
        4. Convert Wind Speed to miles per hour and save it in a variable
        5. Print the following output using fprintf  using the below text, and replacing the word/phrases in       parenthesis with  variables generated in steps 1 - 4
Output:  In (Location) it is (temperature, with one decimal point) degrees farenheit, (conditions), with winds coming from the (wind direction) at (wind speed, 2 decimal places) miles per hour, and the relative humidity is (humidity as a whole number)%.

Background Information:
The conversions to be used: 
°F = 
Miles per hour = 2.2369 * meters per second

%}

clear % useful to clear your workspace and use new variables
clc %always clear screens before youu start
close all % (optional) needed to close any opned graph or figures
commandwindow % make the commend mindow the active location

% inputs
user_location = input('Where are you located? ', 's');
user_temperature_C = input('What is the current temperature (in Celsius)? ');
user_humidity = input('What is the humidity outside (in a percentage)? ');
user_wind_speed_meters = input('How fast is the wind flowing (in meters per second)? ');
user_wind_direction = input('Which direction is the wind heading (cardinal directions)? ','s');
conditions = 'partly cloudy';

user_temperature_F = (user_temperature_C *(9/5)) + 32;
user_wind_speed_miles = user_wind_speed_meters * 2.2369;


fprintf('In %s it is %0.1f degrees farenheit, %s ,with winds coming from the %s at %0.2f miles per hour, and the relative humidity is %d%%.', user_location, user_temperature_F, conditions, user_wind_direction, user_wind_speed_miles, user_humidity)