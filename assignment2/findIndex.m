function [row,col]=findIndex(compMove)
%for tic tac toe. Creating a function that will return a row and col based
%off the input. 
if compMove == '1'
    row = 1
    col = 1
elseif compMove == '2'
    row = 1
    col = 2
elseif compMove == '3'
    row = 1
    col = 3
end