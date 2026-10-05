%{
Agamya Rao
ENGR 115 - Section 14
HW - Planning Study Session
Problem Statement: You are planning a study session using your laptop in a location where an outlet may or may not
be available. Your goal is to estimate whether your laptop battery will last long enough for the planned
session and provide a recommendation
%}


clc
clear

% hard coded values
batteryCapacity = 50;
usableBatteryFraction = 0.85;
laptopBasePower = 20;
highScreenBrightness = 10 ;
zoomOrTeamsVideoCall = 15;

% user inputs
studyDuration = input('How long is the study session in hours? ');
screenBrightness = input('What is your screen brightness level? 1 = High and 0 = Low: ');
videoCallTF = input('Are you on a video call? 1 = Yes and 0 = No: ');
outletAvailability = input('Will you have an outlet nearby? 1 = Yes and 0 = No: ');

%% total power calculations
if screenBrightness == 1
    totalPower = laptopBasePower + highScreenBrightness;
elseif videoCallTF == 1
        totalPower = laptopBasePower + zoomOrTeamsVideoCall;
elseif videoCallTF == 1 || screenBrightness == 1
            totalPower = laptopBasePower + highScreenBrightness + zoomOrTeamsVideoCall;
end

requiredEnergy = totalPower * studyDuration;
usableBatteryEnergy = batteryCapacity * usableBatteryFraction;


%% reports back to user
if requiredEnergy < usableBatteryEnergy
    fprintf('\nSafe to proceed on current battery levels!');
elseif requiredEnergy > usableBatteryEnergy && outletAvailability == 1
    fprintf('\nProceed on current battery levels ONLY if plug into an outlet!');
else
    fprintf('\nReduce power consumption or duration.');
end

if screenBrightness == 1 || zoomOrTeamsVideoCall == 1
    fprintf('\nTip: To reduce power consumption, lower brightness or avoid video.');
end

%{
my sample run:
How long is the study session in hours? 5
What is your screen brightness level? 1 = High and 0 = Low: 1
Are you on a video call? 1 = Yes and 0 = No: 1
Will you have an outlet nearby? 1 = Yes and 0 = No: 0

Reduce power consumption or duration.
Tip: To reduce power consumption, lower brightness or avoid video.>> 
%}