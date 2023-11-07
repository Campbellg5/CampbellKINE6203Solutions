function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber() - Assignment 5
%
%        NAME: Grace Campbell
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 9 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): '); 

while level ~= beginner && level ~= moderate && level ~= advanced %Bug found. || needs to be &&.
    %Could not move past this part if there was no fix. 
fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected

if level == beginner %Bug found: I found this by trying to run 
    % the code and getting a incorrect use of '=' error message. Added another =                      

highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;

elseif level == advanced %Bug found: missing advanced in this if statement.
    % Saw that it did not match the above statements

highest = advancedHighest; %Bug found. Needed switch case format. Captial "H".
% Error when running because it could not find advancedHighest. 

end

% randomly select secret number between 1 and highest for level of play

secretNumber = floor(rand() * highest + 1); %Bug found. Not choosing a random number. 
% Only choosing the highest value. 
% Now random number plus one. Hopefully it doesn't go past highest with the + 1. 
% Solves the problem of it selecting 0.    

% initialize number of guesses and User_guess

numOfTries = 0; % Bug found. Needs to be 0 to start so 
% if they guess it on the first try it will spit out a line from farther down. 
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber

% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest);

userGuess = input('');

while userGuess < 1 || userGuess > highest %Bug found. Not printing the 
    % line below if user choses a number greater than the highest or a 
    % number less than 1. Fixed by taking away the = sign. 

fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

userGuess = input('');

end % of guess validation loop

% add 1 to the number of guesses the user has made

numOfTries = numOfTries + 1;

% report whether the user's guess was high, low, or correct
 

if userGuess < secretNumber %Bug found. Needs to be less than the 
    % match the following statement. Found because it was not displaying
    % the following statement. 
fprintf('Sorry, %d is too low.\n', userGuess);

elseif userGuess > secretNumber 
fprintf('Sorry, %d is too high.\n', userGuess);

elseif numOfTries == 1
fprintf('\nLucky You!  You got it on your first try!\n\n');

else
fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
secretNumber, numOfTries); %Bug found. In the printed statement it was not
%stating how many tries it took to guess. Added numOfTries to the statment.


end % Bug found. Ending if statement 
end % of guessing while loop
% end of game

fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n'); %Bug found. 
% This line needs to be outside of the loops to run. Found because it was
% not showing when the game ended. 
