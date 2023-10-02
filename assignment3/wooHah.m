function [textOut] = wooHah(num1,num2)
%Please input two numbers
%wooHah will take two number inputs then add those up. If the sum of those
%two numbers is even it will say "Woo" if they are odd it will say "Hah".
%Please input two numbers
value1 = num1 + num2

if (rem(value1,2)==0)
    textOut = "Woo";
else
    textOut = "Hah";
end