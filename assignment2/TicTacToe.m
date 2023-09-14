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

name = input(prompt,"s");

s = strcat( name,', welcome to Tic Tac Toe, enjoy!');

disp(s)

gameboard = [ "a" "b" "c" ; "d" "e" "f" ; "g" "h" "i" ] 

playerOne = input("Do you want to play? Y/N,:","s")

 if contains(playerOne,"Y","IgnoreCase",true)
     %play game
     disp('playing game')
     disp(gameboard)
 else 
     %quit game
     disp('quitting game')
 end 

disp("For your move choose a letter a to i")

%while loop for input validatioon
playerOne = input('letter','s')

if (playerOne == 'a')
        gameboard(1,1)= "X"
        gameboard(2,2)= "O"
elseif(playerOne =='b')
    gameboard(1,2)= "X"
    gameboard(2,2)= "O"
elseif(playerOne =='c')
    gameboard(1,3)= "X"
    gameboard(2,2)= "O"
elseif(playerOne =='d')
    gameboard(2,1)= "X"
    gameboard(2,2)= "O"
elseif(playerOne =='e')
    gameboard(2,2)= "X"
    gameboard(1,2)= "O"
elseif(playerOne =='f')
    gameboard(2,3)= "X"
    gameboard(2,2)= "O"
elseif(playerOne =='g')
    gameboard(3,1)= "X"
    gameboard(2,2)= "O"
elseif(playerOne =='h')
    gameboard(3,2)= "X"
    gameboard(2,2)= "O"
elseif(playerOne =='i')
    gameboard(3,3)= "X"
    gameboard(2,2)= "O"
end

fprintf('moveTwo')

playerOne = input('letter')

if (playerOne == 'a')
        gameboard(1,1)= "X"
        gameboard(2,3)= "O"
elseif(playerOne =='b')
    gameboard(1,2)= "X"
    gameboard(2,3)= "O"
elseif(playerOne =='c')
    gameboard(1,3)= "X"
    gameboard(2,3)= "O"
elseif(playerOne =='d')
    gameboard(2,1)= "X"
    gameboard(2,3)= "O"
elseif(playerOne =='e')
    gameboard(2,2)= "X"
    gameboard(2,3)= "O"
elseif(playerOne =='f')
    gameboard(2,3)= "X"
    gameboard(3,2)= "O"
elseif(playerOne =='g')
    gameboard(3,1)= "X"
    gameboard(2,3)= "O"
elseif(playerOne =='h')
    gameboard(3,2)= "X"
    gameboard(2,3)= "O"
elseif(playerOne =='i')
    gameboard(3,3)= "X"
    gameboard(2,3)= "O"
end

fprintf('moveThree')

playerOne = input('letter')

% play again?
 playerOne = input("Play again? Y/N,:","s")

 if (playerOne == "Y|y")
     %play game
     disp('playing game')
     disp(gameboard)
 else 
     %quit game
     disp('quitting game')
 end 
