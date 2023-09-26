function [row,col]=findIndex(compMove)
%for tic tac toe. Creating a function that will return a row and col based
%off the input.
disp(compMove)
if compMove == '1'
    row = 1;
    col = 1;
elseif compMove == '2'
    row = 1;
    col = 2;
elseif compMove == '3'
    row = 1;
    col = 3;
elseif compMove == '4'
    row = 2;
    col = 1;
elseif compMove == '5'
    row = 2;
    col = 2;
elseif compMove == '6'
    row = 2;
    col = 3;
elseif compMove == '7'
    row = 3;
    col = 1;
elseif compMove == '8'
    row = 3;
    col = 2;
elseif compMove == '9'
    row = 3;
    col = 3;
end