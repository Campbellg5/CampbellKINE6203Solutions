function [totalAmount] = money(quaters,dimes,nickles,pennies)
%Input total amount of each type of coin you have. The function will then
%calucate the total amount of money you have. 

totalAmount = quaters*(.25) + dimes*(.1) + nickles*(.05) + pennies*(.01)
end