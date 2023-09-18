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
prompt = "whats your name?";

name = input(prompt,"s");

s = strcat( name,', welcome to Tic Tac Toe, enjoy!');

disp(s)

gameboard = [ "a" "b" "c" ; "d" "e" "f" ; "g" "h" "i" ]

availableMoves = [ "a" "b" "c" ; "d" "e" "f"; "g" "h" "i"]

playerOne = input('letter','s')

availableMoves = setdiff(availableMoves,playerOne)

idx = randi([1,length(availableMoves)],1,1);

compMove = availableMoves(idx)

availableMoves = setdiff(availableMoves,compMove);

playerOne = input('letter','s')

availableMoves = setdiff(availableMoves,playerOne);

idx = randi([1,length(availableMoves)],1,1);

compMove = availableMoves(idx)

availableMoves = setdiff(availableMoves,compMove);

disp(compMove)

%%

%while logical expression is true runs code




while complete = false

gameboard = [ "a" "b" "b" ; "d" "e" "f" ; "g" "h" "i" ]

complete = false
%%% can do the gameboard(:,col) to check if all one letter?



gameboard = [ "a" "b" "c" ; "d" "e" "f" ; "g" "h" "i" ]

complete = true

while complete == false

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

end
end
 %% write all combination. For both X and O. Complete can be player
    % or comp win. Keep complete and have a player or comp wins. 
disp(complete)




sum = 0
while sum < 3
    if mod (sum,2) == 0
        disp ("your turn")
end 
    sum = sum + 1 
    disp (sum)
end


while 
    if mod(availableMoves,2) ==
        disp("your turn")
    end
% variable outside of while statement to track whose turn it is. 

%while complete == false, determine if game is complete 
    %set available moves
    %figure out whose turn it is 
    % if computer turn random number index from available moves generates
    %       needs to change gameboard and take away from available moves
    % if players turn ask for input, check valid move
    % while loop to check from set available not gameboard.
   checkForLegalMove = true    
    while (checkForLegalMoves)

playerOne = input('letter','s')

if (playerOne == 'a' && gameboard (1,1) == 'a')
        gameboard(1,1)= "X"
        availableMoves = setdiff(availableMoves,playerOne)
elseif

        idx = randi([1,length(availableMoves)],1,1)
        compMove = availableMoves(idx)
        availableMoves = setdiff(availableMoves,compMove)
        gameboard(compMove) = "O"
elseif(playerOne =='b' && gameboard (1,2) == 'b')
    gameboard(1,2)= "X"
    availableMoves = setdiff(availableMoves,playerOne)
elseif(playerOne =='c' && gameboard (1,3) == 'c')
    gameboard(1,3)= "X"
    availableMoves = setdiff(availableMoves,playerOne)
elseif(playerOne =='d' && gameboard (2,1) == 'd')
    gameboard(2,1)= "X"
    availableMoves = setdiff(availableMoves,playerOne)
elseif(playerOne =='e' && gameboard (2,2) == 'e')
    gameboard(2,2)= "X"
    availableMoves = setdiff(availableMoves,playerOne)
elseif(playerOne =='f' && gameboard (2,3) == 'f')
    gameboard(2,3)= "X"
    availableMoves = setdiff(availableMoves,playerOne)
elseif(playerOne =='g' && gameboard (3,1) == 'g')
    gameboard(3,1)= "X"
   availableMoves = setdiff(availableMoves,playerOne)
elseif(playerOne =='h' && gameboard (3,2) == 'h')
    gameboard(3,2)= "X"
    availableMoves = setdiff(availableMoves,playerOne)
elseif(playerOne =='i' && gameboard (3,3) == 'i')
    gameboard(3,3)= "X"
    availableMoves = setdiff(availableMoves,playerOne);
end

    % if it is false ask for another input. Similar to the complete
    % change gameboard and take away from available moves
    % check if complete = true. If true gameover.
    % change the term (mod)






checkForLegalMove = true

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
        availableMoves = setdiff(availableMoves,playerOne);
elseif(playerOne =='b')
    gameboard(1,2)= "X"
    gameboard(2,2)= "O"
    availableMoves = setdiff(availableMoves,playerOne);
elseif(playerOne =='c')
    gameboard(1,3)= "X"
    gameboard(2,2)= "O"
    availableMoves = setdiff(availableMoves,playerOne);
elseif(playerOne =='d')
    gameboard(2,1)= "X"
    gameboard(2,2)= "O"
    availableMoves = setdiff(availableMoves,playerOne);
elseif(playerOne =='e')
    gameboard(2,2)= "X"
    gameboard(1,2)= "O"
    availableMoves = setdiff(availableMoves,playerOne);
elseif(playerOne =='f')
    gameboard(2,3)= "X"
    gameboard(2,2)= "O"
    availableMoves = setdiff(availableMoves,playerOne);
elseif(playerOne =='g')
    gameboard(3,1)= "X"
    gameboard(2,2)= "O"
    availableMoves = setdiff(availableMoves,playerOne);
elseif(playerOne =='h')
    gameboard(3,2)= "X"
    gameboard(2,2)= "O"
    availableMoves = setdiff(availableMoves,playerOne);
elseif(playerOne =='i')
    gameboard(3,3)= "X"
    gameboard(2,2)= "O"
availableMoves = setdiff(availableMoves,playerOne);
end

%solid first move. Need to figure out better second move and how to make it
%not retake a spot. 

fprintf('moveTwo')

playerOne = input('letter','s')

if (playerOne == 'a' && gameboard (1,1) == 'a')
        gameboard(1,1)= "X"
        gameboard(2,3)= "O"
elseif(playerOne =='b' && gameboard (1,2) == 'b')
    gameboard(1,2)= "X"
    gameboard(2,3)= "O"
elseif(playerOne =='c' && gameboard (1,3) == 'c')
    gameboard(1,3)= "X"
    gameboard(2,3)= "O"
elseif(playerOne =='d' && gameboard (2,1) == 'd')
    gameboard(2,1)= "X"
    gameboard(2,3)= "O"
elseif(playerOne =='e' && gameboard (2,2) == 'e')
    gameboard(2,2)= "X"
    gameboard(2,3)= "O"
elseif(playerOne =='f' && gameboard (2,3) == 'f')
    gameboard(2,3)= "X"
    gameboard(3,2)= "O"
elseif(playerOne =='g' && gameboard (3,1) == 'g')
    gameboard(3,1)= "X"
    gameboard(2,3)= "O"
elseif(playerOne =='h' && gameboard (3,2) == 'h')
    gameboard(3,2)= "X"
    gameboard(2,3)= "O"
elseif(playerOne =='i' && gameboard (3,3) == 'i')
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