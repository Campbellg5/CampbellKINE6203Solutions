function [maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(Gender,Day1,Day2,Day3)
% This function will use a for loop and an if statement that will output
% four different variables. 
% Will need to call [[maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(Gender,Day1,Day2,Day3)]
% The for loop to check through the imported data sorting through the column Gender. 
% If the Gender is 'M' then the function will calculate the mean
% and store it under maleIsoIndMeans. If the Gender is 'F' then the
% function will calculate the mean and store it under femaleIsoIndMeans.
for i= 1:length(Gender)
    
    if Gender(i) == 'M'
        maleIsoIndMeans(i)=(Day1(i)+Day2(i)+Day3(i))/3;

    elseif Gender(i) == 'F'
        femaleIsoIndMeans(i)=(Day1(i)+Day2(i)+Day3(i))/3;
  
    end
end

% Assigning the group means of both male and female groups based off the
% mean indvidual values. This is done by calculating all the values within
% maleIsoIndMeans for males and then femaleIsoIndMeans for females. 
% All values in those except for the zeros will be calculated. 
maleGroupIsoMean= mean(nonzeros(maleIsoIndMeans));

femaleGroupIsoMean= mean(nonzeros(femaleIsoIndMeans));

%Transposing variables below to go from a row vector to a column vector.  
maleIsoIndMeans = maleIsoIndMeans';

femaleIsoIndMeans = femaleIsoIndMeans';