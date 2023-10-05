function [TF] = prime(num)
%This fuction will test to see if the input number is prime or not. Please
%input a numeric value

%Checking if prime
TF=isprime(num);
%If false it will display false.
if TF == false
    disp('false')
%If true it will display true.
elseif TF == true
    disp('true')

end







% Write a function that takes a number as input and 
% returns true if the number is a prime number and false if 
% the number is not prime.