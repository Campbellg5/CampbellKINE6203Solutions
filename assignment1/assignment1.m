%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment 1: Matlab Scavenger Hunt and HelloWorld
%
% Submitted by:Grace Campbell
%
% Due: August 31, 2023
%
% Instructions: 

% There are two parts to this assignment. Part 1 deals with using the
% Matlab documentation to answer some questions or perform some tasks. Part
% 2 involves you writing your very first Matlab program!!

% Please write all of your responses in the following .mfile.
% If there are comments after the question (as in question 2) please 
% write your answer inside those comments. If there are not comments
% please write your answer with correct matlab syntax. 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%% Part 1  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 1. Set the url of the matlab documentation to a variable called helpURL

helpURL = 'https://www.mathworks.com/help/matlab/';

% 2. What does the command 'clear all' do?
%
% Answer: The command 'clear all' clears everything and makes more room for
% functional memory.
%


% 3. Find a matlab function to take the average of the following
% numbers [1 7 21 32 67 32453]? Store your answer in a variable called
% averageAnswer.

 averageAnswer = mean ([1 7 21 32 67 32453]);

% 4. What command would you type to see a list of all installed toolboxes?

  ver;      %<- command goes here

% 5. Write some commands that would return a list of all of the available 
% functions in the image processing toolbox? 

web("https://www.mathworks.com/help/images/referencelist.html?type=function&s_tid=CRUX_topnav")

% 6. On the line below figure, write a command to draw a graph of 
% x and y. 

x = linspace(-2*pi,2*pi);
y = sin(x);

figure
plot(x,y) %<- command goes here

        

% 7. Find a function that performs a statistical test you've seen used
% in a journal article (there are many possible answers to this). What does
% this function do and how would you use it?

%
% Answer: ttest is used to compare the means of two groups. The function is
% to determine the mean of two samples and evualate if there is a
% signficant difference or not. You could use it if you want to compare
% something specific about a large group of people to a smaller group of 
% people and see if it is relatable. That would be an example of a one
% sample Ttest.

% 8. What are the 2 major types of loops that MATLAB supports? What is the
% difference between them?

%
% Answer: The two types of loops are for and while. for is used to repeat a
% specific block of code a certain amount of time. while is used top repeat
% a specific block of code an uncertain amount of time until the conditions
% are met. 
% 
% 


% 9. What does NaN stand for? Give an example of when you would get NaN as
% an answer. 

%
% Answer: Not a number. Something divided by 0
%


% 10. The following code snippet executes but contains an error (we don't
% get a useful answer). See if you can use the documentation to fix the 
% error to get the sum of the numbers in A. Do not change or remove 
% any of the values in A.

A = [1 2 3 2 1 NaN 1 2 3 NaN];
S = sum('A')


% 11. I used to love playing the game minesweeper. Is there a way that I
% could play a similar game on Matlab? Write the command that would launch
% the game if so. 

xpbombs
% according to google this is the command to play minesweeper. No I don't
% understand how


% 12. Create a variable myAge and assign it the value of your age. Then 
% create a new variable called ageLessTwo and subtract two from the value of the
% myAge variable. Create a third variable called agePlusOne and add one to 
% the value of the myAge variable.

myAge = 23
ageLessTwo = myAge - 2 
agePlusOne = myAge + 1

% 13. Use the built-in function namelengthmax to find out the maximum number of
% characters that you can have in an identifier name under your version of
% MATLAB. Assign the value to a variable called maxNameLength.

maxNameLength = 63 


% 14. You need to convert some weight values from metric to standard units. 
% Create two appropriately named variables to store the original weight in 
% pounds and the original weight in ounces respectively. Use who and whos 
% to see the variables. Clear one of your variables and then use who and whos again.

originalWeightkg = 100;
% Add your code on the next line
standarValueoz = originalWeightkg * 35
standardValuelb = originalWeightkg * 2.2
who
whos
clear standarValueoz
who
whos

% 15. Assign a number with a decimal place to an appropriately named variable. Convert the
% variable to the type int32 and store the result in a new variable (hint: this is known
% as casting in computer programming). Use whos to check your result. 

decimalVariable = .05
newVariable = cast (decimalVariable, "int32")
whos

% 16. Create a variable called weightInLBs to store a weight in pounds. Convert this to 
% kilograms using an appropriate calculation or function and assign the result to a variable weightInKgs.

weightInLBs = input ('weight in pounds')
weightinKGs = weightInLBs / 2.2


% 18. Create a variable fTemp to store a temperature in degrees Fahrenheit (F). 
% Convert this to degrees Celsius (C) using an appropriate 
% calculation and store the result in a variable cTemp.


fTemp = input ('temp in degrees (F)')
cTemp = (fTemp - 32 ) * 5 / 9 


% 19. Using the colon operator, create the following row vectors:
% 2 3 4 5 6 7 
% 1.1000 1.3000 1.5000 1.7000 
% 8 6 4 2
% Store your results with variable names vecA, vecB and vecC respectively.

vecA = 2:7
vecB = 1.1000 : + .2000 : 1.7000
vecC = 8 : -2 : 2




% 20. Give a MATLAB expression that would create a vector 
% (assigned to a variable called vec) of 50 elements that range, equally spaced, 
% from 0 to 2pi. 

 vec = linspace(0, 2 * pi, 50) 

% 21. Using the colon operator and the transpose operator, 
% create a column vector that has the values -1 to 1 in steps of 0.5.
% Assign your answer to a variable called colVec.

colVec = [ -1 ; + .5 ; 1 ]
colVec = [ -1 ; + 0.5 ; 1]'

% 22. Create a variable called rows that is a random integer in the inclusive range 
% from 1 to 5. Create a variable called cols that is a random integer in the 
% inclusive range from 1 to 5. Create a matrix called resultMat of all zeros with the 
% dimensions given by the values of rows and cols. The resultMat should
% change each time you execute your code. 


rows = randi ( [ 1 5] )
cols = randi ( [ 1 5] )
resultMat = zeros ( rows, cols )

% 23. Create a vector of five random integers, each in the inclusive range 
% from -10 to 10 assigned to a variable named originalVec. Perform each of 
% the following on the original vector and store your results in appropriately 
% named variables. (you should have a seperate line of code for each)
originalVec = randi([ -10, 10 ], 5, 1 )
% - subtract 3 from each element

sub = originalVec - 3
% - count how many are positive

positive = sum (originalVec > 0)
% - get the absolute value of each element
absolute = abs(originalVec)


% - find the maximum.

maximum = max (originalVec)

% 24. Write some code that will calculate the area of a trapezoid. Create
% variables for base1, base2, and height and assign them values. Store the
% result of your calculation in a variable called trapArea. Comment your
% code so that another user can understand what your code does. 

base1 = (input ( 'number for base1' ))
base2 = (input ( 'number for base2' ))
height = (input ( 'number for height' ))
trapArea = ( ( base1 + base2 ) / 2 ) * height
% Insert the measurement represented for each variable.Based of the values
% the area of a trapezoid will be calculated. 


% 25. In sports marketing and other areas of sports management, 
% ROI (return on investment) is a key metric when making organizational 
% decisions. The classic equation for ROI is:

% ROI = (Total Revenues – Total Costs) / Total Costs x 100

% Write some code that prompts the user to input total revenues and total 
% costs and then calculates the ROI and stores the value in a variable called
% ROI.

totalRev = input ('total revenue:')
totalCost = input ('total cost:')
ROI = ( totalRev - totalCost ) / totalCost * 100
% xR = total revenues, xC = total costs


%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%  Part 2: Hello World %%%%%%%%%%%%%%%%%%%%%%%%%%

% Write some code that will print the string 'Hello World' to the screen. 
% There are several ways that you could do this. For an extra challenge, 
% make your program able to take text input from the user and output 
% whatever they input. (For ease of running and executing your solution for 
% part 2, make sure you click the Run Section button vs the Run button) 

%%% Enter the code for your program below this line
prompt = "what is your name?"
name = input(prompt, "s")
s = strcat("hello world from" , name)
disp(s)



%%%%% When you have completed everything, type the following two commands
%%%%% (without comments) into your command window. 

%%% load handel
%%% sound(y, Fs)