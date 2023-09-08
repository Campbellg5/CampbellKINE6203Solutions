%%% Tic Tac Toe Game %%
% Play Tic Tac Toe. 
% Written by: Grace Campbell

% Detailed Description (how to play)
% 

% Tested using matlab 2023
% Test on MacBook Pro 

% Last updated: 9/7/2023

%gameboard(1,1) = 
% Welcome Message
prompt = "whats your name?"

name = input(prompt,"s")

s = strcat( name,', welcome to Tic Tac Toe, enjoy!')

disp(s)

gameboard = [ "a" "b" "c" ; "d" "e" "f" ; "g" "h" "i" ] 

playerOne = input("Do you want to play? Y/N:","s")

 if (playerOne == "Y") 
     %play game
     disp('playing game')
     disp(gameboard)
 else 
     %quit game
     disp('quitting game')
 end 

disp("For your move choose a number a to i")
playerOne = input('letter')
if (playerOne == 'a')
gameboard(1,1)= X
elseif(playerOne =='b')
    gameboard(1,2)= X
elseif(playerOne =='c')
    gameboard(1,3)= X
elseif(playerOne =='d')
    gameboard(2,1)= X
elseif(playerOne =='e')
    gameboard(2,2)= X
elseif(playerOne =='f')
    gameboard(2,3)= X
elseif(playerOne =='g')
    gameboard(3,1)= X
elseif(playerOne =='h')
    gameboard(3,2)= X
elseif(playerOne =='i')
    gameboard(3,3)= X
end

playerTwo = 'computer'
disp(gameboard)
 disp("playerTwo choose a to i")
 computer = input('letter')
disp(gameboard)
if (playerTwo == 'a')
gameboard(1,1)= 0
elseif(playerTwo =='b')
    gameboard(1,2)= 0
elseif(playerTwo =='c')
    gameboard(1,3)= 0
elseif(playerTwo =='d')
    gameboard(2,1)= 0
elseif(playerTwo =='e')
    gameboard(2,2)= 0
elseif(playerTwo =='f')
    gameboard(2,3)= 0
elseif(playerTwo =='g')
    gameboard(3,1)= 0
elseif(playerTwo =='h')
    gameboard(3,2)= 0
elseif(playerTwo =='i')
    gameboard(3,3)= 0
end