function [length, first, last] = place(string)

length = strlength(string);

first = extract(string,1);

last = extract(string,length);

end



%%Write a function that takes a string value as input and returns 
% the length of the string and the first and last character as outputs.
%If input = %Halloween’
%Expected Output: 9
%H
%n