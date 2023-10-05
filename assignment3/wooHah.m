function [textOut] = wooHah(num1,num2)
%Please input two numbers
%wooHah will take two number inputs then add those up. If the sum of those
%two numbers is even it will say "Woo" if they are odd it will say "Hah".
%Please input two numbers

%Adding up num1 + num2
value1 = num1 + num2
%Checking if odd or even
if (rem(value1,2)==0)
   
    textOut = "Woo";
else
    textOut = "Hah";
end