function [TF] = prime(num)

TF=isprime(num);

if TF == false
    disp('false')

elseif TF == true
    disp('true')

end







% Write a function that takes a number as input and 
% returns true if the number is a prime number and false if 
% the number is not prime.