%%% Tic Tac Toe Game %%
% Play Tic Tac Toe. 
% Written by: Grace Campbell

% Detailed Description (how to play)
% 

% Tested using matlab 2023
% Test on MacBook Pro 

% Last updated: 9/13/2023

%gameboard(1,1) = 
% Welcome Message
prompt = "whats your name?"

name = input(prompt,"s");

s = strcat( name,', welcome to Tic Tac Toe, enjoy!');

disp(s)

gameboard = [ "a" "b" "c" ; "d" "e" "f" ; "g" "h" "i" ]
availableMoves = [ "a" "b" "c" ; "d" "e" "f" ; "g" "h" "i"];
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


%do not mess with above it works.

%while loop for input validation

playerOne = input('letter','s')

if (playerOne == 'a')
        gameboard(1,1)= "X"
        gameboard (2,2)= "O"
        availableMoves = setdiff(availableMoves,playerOne)
elseif(playerOne =='b')
    gameboard(1,2)= "X"
    gameboard(2,2)= "O"
    availableMoves = setdiff(availableMoves,playerOne)
elseif(playerOne =='c')
    gameboard(1,3)= "X"
    gameboard(2,2)= "O"
    availableMoves = setdiff(availableMoves,playerOne)
elseif(playerOne =='d')
    gameboard(2,1)= "X"
    gameboard(2,2)= "O"
    availableMoves = setdiff(availableMoves,playerOne)
elseif(playerOne =='e')
    gameboard(2,2)= "X"
    gameboard(1,2)= "O"
    availableMoves = setdiff(availableMoves,playerOne)
elseif(playerOne =='f')
    gameboard(2,3)= "X"
    gameboard(2,2)= "O"
    availableMoves = setdiff(availableMoves,playerOne)
elseif(playerOne =='g')
    gameboard(3,1)= "X"
    gameboard(2,2)= "O"
    availableMoves = setdiff(availableMoves,playerOne)
elseif(playerOne =='h')
    gameboard(3,2)= "X"
    gameboard(2,2)= "O"
    availableMoves = setdiff(availableMoves,playerOne)
elseif(playerOne =='i')
    gameboard(3,3)= "X"
    gameboard(2,2)= "O"
availableMoves = setdiff(availableMoves,playerOne)
end

%solid first move. Need to figure out better second move and how to make it
%not retake a spot. 

fprintf('moveTwo')

playerOne = input('letter','s')

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

playerOne = input('letter','s')

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






















%trying to figure out how to loop down below.

playerOne = input('letter','s')
 for i = 1:playerOne('a')
     gameboard(1,1)="X"
 end 

playerOne = input('letter','s')

while (playerOne == 'c') 
  gameboard(1,3) = "X"
  gameboard(1,1)= "O"
  break 
end
%this works but what is the differnce between doing and a whole bunch of if
%and ifelse statements?

availableMoves = [ "a" "b" "c" ; "d" "e" "f" ; "g" "h" "i"]
availableMoves== setdiff(availableMoves,playerOne,) 
playerOne = input('letter','s')
if playerOne == 'a'
    availableMoves = 
end
%for statement to end the game
%avaible moves how to check a value. 


% play again

 playerOne = input("Play again? Y/N,:","s");

  if contains(playerOne,"Y","IgnoreCase",true)
     %play game
     disp('playing game')
     disp(gameboard)
 else 
     %quit game
     disp('quitting game')
 end