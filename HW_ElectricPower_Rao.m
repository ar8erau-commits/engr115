%{
Name: Agamya Rao
Email: RAOA4@erau.edu
Date: Sep 2, 2026
Course: ENGR 115 - Section 14
Assignment: HW - Electric Power Consumption
Problem: Compute the energy consumed by each laboratory component, the total electrical energy consumption of the laboratory, and the total cost of electricity for the session
I did not work with anyone, or consult any generative sources. 
%}

%{ 
Inputs:
wattage is in Watts/hour
time is in hours
total energy consumption is in Watts/hour
electricity cost is in USD
electricity rate is in $ per kWh
%}

electric_Motor_wattage = 750;
electric_Motor_Time = 2.5;
cooling_Fan_System = 120 ;
cooling_Fan_System_Time = 3.0;
control_Computer = 300 ;
control_Computer_Time = 4.0;
data_Acquisition_System = 85;
data_Acquisition_System_Time= 4.0;
laboratory_Lighting= 200;
laboratory_Lighting_Time = 3.0;
electricity_Rate = 0.14;

% Formulas

watts_per_hour_one = electric_Motor_wattage * electric_Motor_Time;

watts_per_hour_two = cooling_Fan_System * cooling_Fan_System_Time;

watts_per_hour_three = control_Computer * control_Computer_Time;

watts_per_hour_four = data_Acquisition_System * data_Acquisition_System_Time;

watts_per_hour_five = laboratory_Lighting * laboratory_Lighting_Time;

total_energy_consumption = watts_per_hour_one + watts_per_hour_two + watts_per_hour_three + watts_per_hour_four + watts_per_hour_five

kilowatts_per_hour = total_energy_consumption / 1000;

total_electricity_cost = kilowatts_per_hour * electricity_Rate