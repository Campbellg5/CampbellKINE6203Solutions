function [size, first, last] = len(string)

size = strlength('string')

first =  extract(len,1) 

last =  extract(len,size) 
end








%%Write a function that takes a string value as input and returns 
% the length of the string and the first and last character as outputs.
%If input = %Halloween’
%Expected Output: 9
%H
%n