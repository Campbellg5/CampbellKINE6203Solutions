%while complete == false, determine if game is complete 
    %set available moves
    %figure out whose turn it is 
    % if computer turn random number index from available moves generates
    %       needs to change gameboard and take away from available moves
    % if players turn ask for input, check valid move
    % while loop to check from set available not gameboard.
    % if it is false ask for another input. Similar to the complete
    % change gameboard and take away from available moves
    % check if complete = true. If true gameover.
    % change the term (mod)
    % fix win conditions

prompt = "whats your name?"; %asking user their name. 

name = input(prompt,"s"); %user inputs their name.

s = strcat( name,', welcome to Tic Tac Toe, enjoy!'); % creating welcome message.

disp(s) % priting out welcome message.


gameboard = [ "1" "2" "3" ; "4" "5" "6" ; "7" "8" "9" ];

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
disp("For your move choose a number 1-9") % directing playerOne
availableMoves = [ "1" "2" "3" "4" "5" "6" "7" "8" "9"]; % hidden, what
%the computer will choose from.

 for moves = 1:9
playerOne = input('number','s')
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
  if gameboard(1,1) == "X" && gameboard(1,2) == "X" && gameboard(1,3) == "X" 
                complete = true;
                disp('you win!')
                break
            elseif gameboard(1,1) == "O" && gameboard(1,2) == "O" && gameboard(1,3) == "O" 
                complete = true;
                disp('you lose.')
                break
            elseif gameboard(2,1) == "X" && gameboard(2,2) == "X" && gameboard(2,3) == "X" 
                complete = true;
                disp('you win!')
                break
            elseif gameboard(2,1) == "O" && gameboard(2,2) == "O" && gameboard(2,3) == "O" 
                complete = true;
                disp('you lose.')
                break
            elseif gameboard(3,1) == "X" && gameboard(3,2) == "X" && gameboard(3,3) == "X" 
                complete = true;
                disp('you win!')
                break
            elseif gameboard(3,1) == "O" && gameboard(3,2) == "O" && gameboard(3,3) == "O" 
                complete = true;
                disp('you lose.')
                break
            elseif gameboard(1,1) == "X" && gameboard(2,1) == "X" && gameboard(3,1) == "X" 
                complete = true;
                disp('you win!')
                break
            elseif gameboard(1,1) == "O" && gameboard(2,1) == "O" && gameboard(3,1) == "O"
                complete = true;
                disp('you lose.')
                break
            elseif gameboard(1,2) == "X" && gameboard(2,2) == "X" && gameboard(3,2) == "X"
                complete = true;
                disp('you win!')
                break
            elseif gameboard(1,2) == "O" && gameboard(2,2) == "O" && gameboard(3,2) == "O"
                complete = true;
                disp('you lose.')
                break
            elseif gameboard(1,3) == "X" && gameboard(2,3) == "X" && gameboard(3,3) == "X"
                complete = true;
                disp('you win!')
                break
            elseif gameboard(1,3) == "O" && gameboard(2,3) == "O" && gameboard(3,3) == "O"
                complete = true;
                disp('you lose.')
                break
            elseif gameboard(1,3) == "X" && gameboard(2,2) == "X" && gameboard(3,1) == "X"
                complete = true;
                disp('you win!')
                break
            elseif gameboard(1,3) == "O" && gameboard(2,2) == "O" && gameboard(3,1) == "O"
                complete = true;
                disp('you lose.')
                break
            elseif gameboard(1,1) == "X" && gameboard(2,2) == "X" && gameboard(3,3) == "X"
                complete = true;
                disp('you win!')
                break
            elseif gameboard(1,1) == "O" && gameboard(2,2) == "O" && gameboard(3,3) == "O"
                complete = true;
                disp('you lose.')
                break
  end
  if availableMoves > '0'
  compMove = randsample(availableMoves,1)
                [row,col]= findIndex (compMove);
                gameboard(row,col)="O"
                availableMoves = setdiff(availableMoves,num2str(compMove,"%.0f"));
  end

if gameboard(1,1) == "X" && gameboard(1,2) == "X" && gameboard(1,3) == "X" 
                complete = true;
                disp('you win!')
                break
            elseif gameboard(1,1) == "O" && gameboard(1,2) == "O" && gameboard(1,3) == "O" 
                complete = true;
                disp('you lose.')
                break
            elseif gameboard(2,1) == "X" && gameboard(2,2) == "X" && gameboard(2,3) == "X" 
                complete = true;
                disp('you win!')
                break
            elseif gameboard(2,1) == "O" && gameboard(2,2) == "O" && gameboard(2,3) == "O" 
                complete = true;
                disp('you lose.')
                break
            elseif gameboard(3,1) == "X" && gameboard(3,2) == "X" && gameboard(3,3) == "X" 
                complete = true;
                disp('you win!')
                break
            elseif gameboard(3,1) == "O" && gameboard(3,2) == "O" && gameboard(3,3) == "O" 
                complete = true;
                disp('you lose.')
                break
            elseif gameboard(1,1) == "X" && gameboard(2,1) == "X" && gameboard(3,1) == "X" 
                complete = true;
                disp('you win!')
                break
            elseif gameboard(1,1) == "O" && gameboard(2,1) == "O" && gameboard(3,1) == "O"
                complete = true;
                disp('you lose.')
                break
            elseif gameboard(1,2) == "X" && gameboard(2,2) == "X" && gameboard(3,2) == "X"
                complete = true;
                disp('you win!')
                break
            elseif gameboard(1,2) == "O" && gameboard(2,2) == "O" && gameboard(3,2) == "O"
                complete = true;
                disp('you lose.')
                break
            elseif gameboard(1,3) == "X" && gameboard(2,3) == "X" && gameboard(3,3) == "X"
                complete = true;
                disp('you win!')
                break
            elseif gameboard(1,3) == "O" && gameboard(2,3) == "O" && gameboard(3,3) == "O"
                complete = true;
                disp('you lose.')
                break
            elseif gameboard(1,3) == "X" && gameboard(2,2) == "X" && gameboard(3,1) == "X"
                complete = true;
                disp('you win!')
                break
            elseif gameboard(1,3) == "O" && gameboard(2,2) == "O" && gameboard(3,1) == "O"
                complete = true;
                disp('you lose.')
                break
            elseif gameboard(1,1) == "X" && gameboard(2,2) == "X" && gameboard(3,3) == "X"
                complete = true;
                disp('you win!')
                break
            elseif gameboard(1,1) == "O" && gameboard(2,2) == "O" && gameboard(3,3) == "O"
                complete = true;
                disp('you lose.')
                break
elseif gameboard(1,1) ~= '1' && gameboard(1,2) ~= "2" && gameboard(1,3) ~= "3" && gameboard(2,1) ~= "4" && gameboard(2,2) ~= "5" && gameboard(2,3) ~= "6" && gameboard (3,1) ~= "7" && gameboard(3,2) ~= "8" && gameboard(3,3) ~= "9"
    disp('tie')
    break 
end
end

% while player one input is y. run through game. no end. 
playerOne = input("Play again? Y/N,:","s");
gameboard = [ "1" "2" "3" ; "4" "5" "6" ; "7" "8" "9" ];
 if contains(playerOne,"Y","IgnoreCase",true) % if statement to run based off of players one input. 
     %play game
     disp('playing game')
     disp(gameboard)
 else 
     %quit game
     disp('quitting game')
     playAgian = false;
 return
 end 
 end