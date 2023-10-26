% Assignment 4 created by Grace Campbell
 %% Written by Grace Campbell
% This main is to used multiple functions that are premade and created.
%In this you will use three functions (imporfile, genderIsoCalc, dayComparer) 
% to get isokinetic data from different subjects. Each subject is assesd
% based off their weight and gender in a three day trial period (Day1,
% Day2, Day3).

%Tested using Matlab R2023a

%Test on Macbook Pro

%Last updated 10/25/2023


%Cleaing all previous workspace variables and command window. 
clear
clc
%Import file function with 5 outputs. The outputs will be in column vector
%form. 

[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile("isok_data_6803.csv");

%genderIsoCalc function will output 4 different outputs. One individual
%output for male and female group means and then a column of al individual
%means within their respected groups.

[maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(Gender,Day1,Day2,Day3)


%dayComparer function is ran twice to show what subjects had improvements
% over day 1 to day 2 and day 2 to day 3. This will give oneput specifying
% the subjectids and what days there was improvements.
% 

[day1toDay2]= dayComparer(SubjectID,Day1,Day2)'

[day2toDay3]= dayComparer(SubjectID,Day2,Day3)'

%Calculating the mean based off the average weight for each day.

normDay1Mean = mean(Day1./Weight)
normDay2Mean = mean(Day2./Weight)
normDay3Mean = mean(Day3./Weight)

% In order to create a table all variables need to be the same lenght. This
% is the long drawn out way of setting them to equal lenghts. 
day1toDay2(25,1) = 0;
day2toDay3 (25,1) = 0;
femaleGroupIsoMean(25,1) = 0;
femaleIsoIndMeans (25,1)= 0;
maleGroupIsoMean (25,1) = 0;
normDay1Mean (25,1) = 0;
normDay2Mean (25,1) = 0;
normDay3Mean (25,1) = 0;

%Exporting of results into a table. 

results = table(maleIsoIndMeans, maleGroupIsoMean, femaleIsoIndMeans,femaleGroupIsoMean,day1toDay2,day2toDay3,normDay1Mean,normDay2Mean,normDay3Mean)
writetable(results,'iso_results.csv')