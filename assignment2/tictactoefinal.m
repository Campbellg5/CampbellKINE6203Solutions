%% Tic Tac Toe
%%
%% Written by Grace Campbell
% Tic Tac Toe will be played by a user (playerOne) against a computer
% (compMove). The objective of the game is to match 3 in a row. user will
% be "X" and computer will be "O". There are 8 ways to win. If there is no
% winner it will result in a tie. 
% 
%Tested using Matlab R2023a
%Test on Macbook Pro
%Last updated 9/23/2023


%Start of script
prompt = "whats your name?"; %asking user their name. 

name = input(prompt,"s"); %user inputs their name.

s = strcat( name,', welcome to Tic Tac Toe, enjoy!'); % creating welcome message.

disp(s) % priting out welcome message.

gameboard = [ "1" "2" "3" ; "4" "5" "6" ; "7" "8" "9" ]; % 3x3 matrix for gameboard

playAgain = true; 
playerOne = input("Do you want to play? Y/N,:","s"); %asking is user wants to play. 

 if contains(playerOne,"Y","IgnoreCase",true) % if statement to run based off of players one input. 
     %play game
     disp('playing game')
     disp(gameboard)
 else 
     %quit game
     disp('quitting game')
     playAgain = false;
 return
 end

while playAgain % while loop for play again question after completed
disp("If choose a number that has already been taken or you will lose a turn")  
disp("For your move choose a number 1-9")% directing playerOne
availableMoves = [ "1" "2" "3" "4" "5" "6" "7" "8" "9"]; % hidden, what
%the computer will choose from.

 for moves = 1:9
playerOne = input('number','s')
%Same comments repeat for playerOne move. Gameboard will move based off
%input.
if (playerOne == '1' && gameboard (1,1) == '1') %making sure they can't go in a place that is taken 
                gameboard(1,1) = "X"%gameboard marks the spot of input      
                availableMoves = setdiff(availableMoves,playerOne); % taking away move for future and for compMove
            elseif(playerOne =='2' && gameboard (1,2) == '2')
                gameboard(1,2)= "X" 
                availableMoves = setdiff(availableMoves,playerOne);
            elseif(playerOne =='3' && gameboard (1,3) == '3')
                gameboard(1,3)= "X" 
                availableMoves = setdiff(availableMoves,playerOne);
            elseif(playerOne =='4' && gameboard (2,1) == '4')
                gameboard(2,1)= "X" 
                availableMoves = setdiff(availableMoves,playerOne);
            elseif(playerOne =='5' && gameboard (2,2) == '5')
                gameboard(2,2)= "X" 
                availableMoves = setdiff(availableMoves,playerOne);
            elseif(playerOne =='6' && gameboard (2,3) == '6')
                gameboard(2,3)= "X"
                availableMoves = setdiff(availableMoves,playerOne);
            elseif(playerOne =='7' && gameboard (3,1) == '7')
                gameboard(3,1)= "X" 
                availableMoves = setdiff(availableMoves,playerOne);
            elseif(playerOne =='8' && gameboard (3,2) == '8')
                gameboard(3,2)= "X"
                availableMoves = setdiff(availableMoves,playerOne);
            elseif(playerOne =='9' && gameboard (3,3) == '9')
                gameboard(3,3)= "X"
                availableMoves = setdiff(availableMoves,playerOne);         
end 
%Checking for win conditions after every player move.
if gameboard(1,1) == "X" && gameboard(1,2) == "X" && gameboard(1,3) == "X" 
                disp('you win!')
                break % first row player win
            elseif gameboard(1,1) == "O" && gameboard(1,2) == "O" && gameboard(1,3) == "O" 
                disp('you lose.')
                break % first row computer win 
            elseif gameboard(2,1) == "X" && gameboard(2,2) == "X" && gameboard(2,3) == "X" 
                disp('you win!')
                break %second row player win
            elseif gameboard(2,1) == "O" && gameboard(2,2) == "O" && gameboard(2,3) == "O" 
                disp('you lose.')
                break % second row computer win 
            elseif gameboard(3,1) == "X" && gameboard(3,2) == "X" && gameboard(3,3) == "X" 
                disp('you win!')
                break % third row player win 
            elseif gameboard(3,1) == "O" && gameboard(3,2) == "O" && gameboard(3,3) == "O" 
                disp('you lose.')
                break % third row computer win 
            elseif gameboard(1,1) == "X" && gameboard(2,1) == "X" && gameboard(3,1) == "X" 
                disp('you win!')
                break % first column player win
            elseif gameboard(1,1) == "O" && gameboard(2,1) == "O" && gameboard(3,1) == "O"
                complete = true;
                disp('you lose.')
                break % first column computer win 
            elseif gameboard(1,2) == "X" && gameboard(2,2) == "X" && gameboard(3,2) == "X"
                disp('you win!')
                break %  second colummn player win          
            elseif gameboard(1,2) == "O" && gameboard(2,2) == "O" && gameboard(3,2) == "O"
                disp('you lose.')
                break % second column computer win 
            elseif gameboard(1,3) == "X" && gameboard(2,3) == "X" && gameboard(3,3) == "X"
                disp('you win!')
                break % third column player win 
            elseif gameboard(1,3) == "O" && gameboard(2,3) == "O" && gameboard(3,3) == "O"
                disp('you lose.')
                break % third columncomputer win 
            elseif gameboard(1,3) == "X" && gameboard(2,2) == "X" && gameboard(3,1) == "X"
                disp('you win!')
                break % diagnal player win 
            elseif gameboard(1,3) == "O" && gameboard(2,2) == "O" && gameboard(3,1) == "O"
                disp('you lose.')
                break % diagnal computer win
            elseif gameboard(1,1) == "X" && gameboard(2,2) == "X" && gameboard(3,3) == "X"
                disp('you win!')
                break% diagnal player win 
            elseif gameboard(1,1) == "O" && gameboard(2,2) == "O" && gameboard(3,3) == "O"
                disp('you lose.')
                break % diagnal computer win
elseif gameboard(1,1) ~= '1' && gameboard(1,2) ~= "2" && gameboard(1,3) ~= "3" && gameboard(2,1) ~= "4" && gameboard(2,2) ~= "5" && gameboard(2,3) ~= "6" && gameboard (3,1) ~= "7" && gameboard(3,2) ~= "8" && gameboard(3,3) ~= "9"
    disp('tie')
    break %cats game
end
% computer move generated by a random number from availableMoves. Only
% works if availableMoves is greater than 0. After each move that move will
% be taken away from avaiableMoves
  if availableMoves > '0'
  compMove = randsample(availableMoves,1)
                [row,col]= findIndex (compMove);%function created tp generate placement of compMove
                gameboard(row,col)="O"%changing gameboard
                availableMoves = setdiff(availableMoves,num2str(compMove,"%.0f")); %changing number to a string so compMove can take from availableMoves

if gameboard(1,1) == "X" && gameboard(1,2) == "X" && gameboard(1,3) == "X" 
                disp('you win!')
                break % first row player win
            elseif gameboard(1,1) == "O" && gameboard(1,2) == "O" && gameboard(1,3) == "O" 
                disp('you lose.')
                break % first row computer win 
            elseif gameboard(2,1) == "X" && gameboard(2,2) == "X" && gameboard(2,3) == "X" 
                disp('you win!')
                break %second row player win
            elseif gameboard(2,1) == "O" && gameboard(2,2) == "O" && gameboard(2,3) == "O" 
                disp('you lose.')
                break % second row computer win 
            elseif gameboard(3,1) == "X" && gameboard(3,2) == "X" && gameboard(3,3) == "X" 
                disp('you win!')
                break % third row player win 
            elseif gameboard(3,1) == "O" && gameboard(3,2) == "O" && gameboard(3,3) == "O" 
                disp('you lose.')
                break % third row computer win 
            elseif gameboard(1,1) == "X" && gameboard(2,1) == "X" && gameboard(3,1) == "X" 
                disp('you win!')
                break % first column player win
            elseif gameboard(1,1) == "O" && gameboard(2,1) == "O" && gameboard(3,1) == "O"
                complete = true;
                disp('you lose.')
                break % first column computer win 
            elseif gameboard(1,2) == "X" && gameboard(2,2) == "X" && gameboard(3,2) == "X"
                disp('you win!')
                break %  second colummn player win          
            elseif gameboard(1,2) == "O" && gameboard(2,2) == "O" && gameboard(3,2) == "O"
                disp('you lose.')
                break % second column computer win 
            elseif gameboard(1,3) == "X" && gameboard(2,3) == "X" && gameboard(3,3) == "X"
                disp('you win!')
                break % third column player win 
            elseif gameboard(1,3) == "O" && gameboard(2,3) == "O" && gameboard(3,3) == "O"
                disp('you lose.')
                break % third columncomputer win 
            elseif gameboard(1,3) == "X" && gameboard(2,2) == "X" && gameboard(3,1) == "X"
                disp('you win!')
                break % diagnal player win 
            elseif gameboard(1,3) == "O" && gameboard(2,2) == "O" && gameboard(3,1) == "O"
                disp('you lose.')
                break % diagnal computer win
            elseif gameboard(1,1) == "X" && gameboard(2,2) == "X" && gameboard(3,3) == "X"
                disp('you win!')
                break% diagnal player win 
            elseif gameboard(1,1) == "O" && gameboard(2,2) == "O" && gameboard(3,3) == "O"
                disp('you lose.')
                break % diagnal computer win
elseif gameboard(1,1) ~= '1' && gameboard(1,2) ~= "2" && gameboard(1,3) ~= "3" && gameboard(2,1) ~= "4" && gameboard(2,2) ~= "5" && gameboard(2,3) ~= "6" && gameboard (3,1) ~= "7" && gameboard(3,2) ~= "8" && gameboard(3,3) ~= "9"
    disp('tie')
    break %cats game
end
  end
 end
playerOne = input("Play again? Y/N,:","s"); %asking user if they want to play again after completed game
gameboard = [ "1" "2" "3" ; "4" "5" "6" ; "7" "8" "9" ]; % 3x3 matrix 
 if contains(playerOne,"Y","IgnoreCase",true) % if statement to run based off of players one input. 
     %play game
     disp('playing game')
     disp(gameboard)
 else 
     %quit game
     disp('goodbye')
     playAgian = false;
 return
 end 
end