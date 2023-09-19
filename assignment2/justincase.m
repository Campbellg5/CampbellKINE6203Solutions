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
prompt = "whats your name?"; %asking user their name. 

name = input(prompt,"s"); %user inputs their name.

s = strcat( name,', welcome to Tic Tac Toe, enjoy!'); % creating welcome message.

disp(s) % priting out welcome message.


gameboard = [ "1" "2" "3" ; "4" "5" "6" ; "7" "8" "9" ];


playerOne = input("Do you want to play? Y/N,:","s"); %asking is user wants to play. 

 if contains(playerOne,"Y","IgnoreCase",true) % if statement to run based off of players one input. 
     %play game
     disp('playing game')
     disp(gameboard)
 else 
     %quit game
     disp('quitting game')
 return

     disp("For your move choose a number 1-9")
 end

availableMoves = [ "1" "2" "3" "4" "5" "6" "7" "8" "9"]; % hidden, what
%the computer will choose from.

 for moves = 1:9 % will run through 9 times unless there is a winner before 
    
         playerOne = input('number','s')
     
            if (playerOne == "1" && gameboard (1,1) == "1")
                gameboard(1,1) = "X"
                availableMoves = setdiff(availableMoves,playerOne)
                idx = randi([1,length(availableMoves)])
                compMove=idx
                gameboard(compMove)= "O"
            elseif(playerOne =="2" && gameboard (1,2) == "2")
                gameboard(1,2)= "X"
                availableMoves = setdiff(availableMoves,playerOne);
                idx = randi([1,length(availableMoves)])
                compMove=idx
                gameboard(compMove)= "O"
            elseif(playerOne =="3" && gameboard (1,3) == "3")
                gameboard(1,3)= "X"; 
                availableMoves = setdiff(availableMoves,playerOne);
                idx = randi([1,length(availableMoves)]);
                compMove = idx
                gameboard(compMove)= "O"
            elseif(playerOne =="4" && gameboard (2,1) == "4")
                gameboard(2,1)= "X" 
                availableMoves = setdiff(availableMoves,playerOne);
                idx = randi([1,length(availableMoves)]);
                compMove = idx
                gameboard(compMove)= "O"
            elseif(playerOne =='5' && gameboard (2,2) == '5')
                gameboard(2,2)= "X" 
                availableMoves = setdiff(availableMoves,playerOne);
                idx = randi([1,length(availableMoves)]);
                compMove = idx
                gameboard(compMove)= "O"
            elseif(playerOne =='6' && gameboard (2,3) == '6')
                gameboard(2,3)= "X"  
                availableMoves = setdiff(availableMoves,playerOne);
                idx = randi([1,length(availableMoves)]);
                compMove = idx
                gameboard(compMove)= "O"
            elseif(playerOne =='7' && gameboard (3,1) == '7')
                gameboard(3,1)= "X" 
                availableMoves = setdiff(availableMoves,playerOne);
                idx = randi([1,length(availableMoves)]);
                compMove = idx
                gameboard(compMove)= "O"
            elseif(playerOne =='8' && gameboard (3,2) == '8')
                gameboard(3,2)= "X" 
                availableMoves = setdiff(availableMoves,playerOne);
                idx = randi([1,length(availableMoves)]);
                compMove = idx
                gameboard(compMove)= "O"
            elseif(playerOne =='9' && gameboard (3,3) == '9')
                gameboard(3,3)= "X"
                availableMoves = setdiff(availableMoves,playerOne);
                idx = randi([1,length(availableMoves)]);
                compMove = idx
                gameboard(compMove)= "O"
            end %%% need to made something so computer doesnt take user spot. and where it takes the right number
            if gameboard(1,1) == "X" && gameboard(1,2) == "X" && gameboard(1,3) == "X" 
                complete = true
                disp('you win!')
                break
            elseif gameboard(1,1) == "O" && gameboard(1,2) == "O" && gameboard(1,3) == "O" 
                complete = true
                disp('you lose.')
                break
            elseif gameboard(2,1) == "X" && gameboard(2,2) == "X" && gameboard(2,3) == "X" 
                complete = true
                disp('you win!')
                break

elseif gameboard(2,1) == "O" && gameboard(2,2) == "O" && gameboard(2,3) == "O" 
    complete = true
    disp('you lose.')
    break

elseif gameboard(3,1) == "X" && gameboard(3,2) == "X" && gameboard(3,3) == "X" 
    complete = true
    disp('you win!')
    break

elseif gameboard(3,1) == "O" && gameboard(3,2) == "O" && gameboard(3,3) == "O" 
    complete = true
    disp('you lose.')
    break

elseif gameboard(1,1) == "X" && gameboard(2,1) == "X" && gameboard(3,1) == "X" 
    complete = true
    disp('you win!')
    break

elseif gameboard(1,1) == "O" && gameboard(2,1) == "O" && gameboard(3,1) == "O"
    complete = true
    disp('you lose.')
    break

elseif gameboard(1,2) == "X" && gameboard(2,2) == "X" && gameboard(3,2) == "X"
    complete = true
    disp('you win!')
    break

elseif gameboard(1,2) == "O" && gameboard(2,2) == "O" && gameboard(3,2) == "O"
    complete = true
    disp('you lose.')
    break

elseif gameboard(1,3) == "X" && gameboard(2,3) == "X" && gameboard(3,3) == "X"
    complete = true
    disp('you win!')
    break

elseif gameboard(1,3) == "O" && gameboard(2,3) == "O" && gameboard(3,3) == "O"
    complete = true
    disp('you lose.')
    break

elseif gameboard(1,3) == "X" && gameboard(2,2) == "X" && gameboard(3,1) == "X"
    complete = true
    disp('you win!')
    break

elseif gameboard(1,3) == "O" && gameboard(2,2) == "O" && gameboard(3,1) == "O"
    complete = true
    disp('you lose.')
    break

elseif gameboard(1,1) == "X" && gameboard(2,2) == "X" && gameboard(3,3) == "X"
    complete = true
    disp('you win!')
    break

elseif gameboard(1,1) == "O" && gameboard(2,2) == "O" && gameboard(3,3) == "O"
    complete = true
    disp('you lose.')
    break 
  %%% need to put in if no winner tie game. 
            end
 end

 playerOne = input("Play again? Y/N,:","s");
game = [ "1" "2" "3" ; "4" "5" "6" ; "7" "8" "9" ]
 if contains(playerOne,"Y","IgnoreCase",true) % if statement to run based off of players one input. 
     %play game
     disp('playing game')
     disp(game)
 else 
     %quit game
     disp('quitting game')
 return

     disp("For your move choose a number 1-9")
 end

%%% how to replay the game. assuming with loop















gameboard = [ "1" "2" "3" ; "4" "5" "6" ; "7" "8" "9" ]

availableMoves = [ "1" "2" "3" "4" "5" "6" "7" "8" "9"];

for moves = [1:9]

    playerOne = input('number','s')

    if (playerOne == '1' && gameboard (1,1) == '1')
        gameboard(1,1) = "X" 
    elseif (playerOne =='2' && gameboard (1,2) == '2')
        gameboard(1,2)= "X" 
    elseif (playerOne =='3' && gameboard (1,3) == '3')
        gameboard(1,3)= "X" 
    elseif (playerOne =='4' && gameboard (2,1) == '4')
        gameboard(2,1)= "X" 
    elseif (playerOne =='5' && gameboard (2,2) == '5')
        gameboard(2,2)= "X" 
    elseif (playerOne =='6' && gameboard (2,3) == '6')
        gameboard(2,3)= "X"  
    elseif (playerOne =='7' && gameboard (3,1) == '7')
        gameboard(3,1)= "X" 
    elseif (playerOne =='8' && gameboard (3,2) == '8')
        gameboard(3,2)= "X"
    elseif (playerOne =='9' && gameboard (3,3) == '9')
        gameboard(3,3)= "X"
break 
availableMoves = setdiff(availableMoves,playerOne)
idx = randi([1,length(availableMoves)]);
compMove = idx
gameboard(compMove)= "O"
    end
end
playerOne = input("Play again? Y/N,:","s");

  if contains(playerOne,"Y","IgnoreCase",true)
     %play game
     disp('playing game')
     disp(gameboard)
 else 
     %quit game
     disp('quitting game')
 end



 % play again

 playerOne = input("Play again? Y/N,:","s");
game = [ "1" "2" "3" ; "4" "5" "6" ; "7" "8" "9" ];
 if contains(playerOne,"Y","IgnoreCase",true) % if statement to run based off of players one input. 
     %play game
     disp('playing game')
     disp(game)
 else 
     %quit game
     disp('quitting game')
 return

     disp("For your move choose a number 1-9")
 end



