function [len, first, last] = place(string)
%Input needs to be a string.
%This funtion will output the total length of the string, the first letter
%of the string and the last letter of the string. 

%Output for the total lenght of the string giving the numerical value. 
len = length(string)
% Outputting the first letter of the string input.
first = string(1)
% Outputting the last letter of the string input. 
last = string(len);

end

 
