%% Lesson 1
% Written by Brenda So

%% Objective
% After this class, you should be able to:
%%
%
% * Know why you need MATLAB
% * Manuever around the MATLAB interface
% * Understand arithmetic and basic functions in MATLAB
% * Know how to make scalar, vector and matrix variables in MATLAB
% * Know how to perform matrix operations in MATLAB
%
%% MATLAB overview
% MATLAB (short for MATrix LABoratory) is a commonly used interactive
% software amongst engineers. As the name suggest, MATLAB organizes its
% data as matrices and is specially designed for matrix multiplication. In
% addition, it has a plethora of plugins and functions that engineers can
% use, such as machine learning, financial analysis, filter design etc. 
%%
% In Cooper, MATLAB is often used in signals class. However, it is also
% useful is classes that interests computer engineers (e.g. Machine
% Learning) and can be used as a calculator in other classes. 
%
%% MATLAB Environment
%%% Command window
% The command window is sort of the equivalent of a terminal in linux, or
% cygwin in windows. When you type a command into the command window, an
% operation performs. You can type a MATLAB command, such as 5+10, and the
% answer would be printed out. If a variable is not assigned to the
% command, the result would be stored in the variable ans automatically. If
% a semicolon is added at the end of the line, the result would be
% suppressed. You can clear the command window by typing clc. Moreover, you
% can also type command line commands in the command window, such as ls,
% pwd etc. 

%%% Command history
% When you are playing around with different functions in MATLAB, you might
% want to trace back what functions you played with. At that time, you can
% press the up arrow, which would show you your command history. 

%%% Workspace
% The workspace is where all the variables are stored. Each variable is
% displayed as a name value pair in the workspace. If the variable is a
% scalar, then the actual value would be shown. If it is a vector or matrix
% , then depending on the size of the vector / matrix, it would either be
% shown as its value or simply the size of the vector / array and its type.
% You can double click on the variables to investigate its actual value in
% a spreadsheet.

%%% Current Folder
% The current folder shows you where you are located at in MATLAB. If you
% execute the command pwd on the command window, it should show you the
% location of the current folder. You might find a time where you need to
% add a folder and link it to your current folder location. At that time,
% you can right click and select "Add to Path". To change current folder,
% you can execute the cd command on your command window

%%% Editor
% The editor is where you can write a script and execute it. All MATLAB
% scripts are saved as .m files. To execute a script, press the play button 
% on top in EDITOR tab. When you are executing a script, you can use the
% semicolon to suppress the output of each line. To display a certain
% variable at an arbitrary location in your script, you can use disp()
% function. 

%% Arithmetic and Basic functions

%% Basic Operations
5+10;                % Addition
ans;                 % Prints out previous answer
25-7;                % Subtraction
24*86;               % Multiplication
123.456*78.90;       % Multiplication
145/123;             % Division
2^5;                 % Exponential
log10(1000);         % Logarithm base 10
log(exp(5));         % Natural logarithm
sqrt(625);           % Square root
sin(pi);             % sine function
asin(0);             % arc sine function
1e5;                 % e5 multiplies 1 by 10^5
1e-2;                % e-2 multiplies 1 by 10^-2

%% Complex Numbers
2+i;
2+j;
(2+2i)*(3+4j);

%% Special Numbers
pi
exp(2*pi*j)
inf

%% Complex number operations
conj(2+i);         % complex conjugate
real(2+i);         % real part
imag(2+i);         % imaginary part
abs(2+i);          % magnitude/absolute value
angle(2+i);        % angle or phase

%% Variables
% In matlab, there are 3 different kinds of variabes
%%
% * Scalar - A scalar appears as 1-by-1 and it is a single real or complex
% number
% * Vector - A vector is 1-by-n or n-by-1, and appears in MATLAB as a row
% or column of complex numbers
% * Matrix - A matrix is m-by-n, and appears in MATLAB as, essentially, a
% matrix. A matrix is a 2-D array
% * Array - An array is a way to store numbers. 

%% Scalar Variables
a = 5;
b = 10;
c = a+b;
z1 = 2+j;
z2 = 3+4j;
z = z1*z2;

%% Vector Variables
x = [1 2+3j 2.718 pi cos(pi)];         % row vector
x = [1, 2+3j, 2.718, pi, cos(pi)];     % same thing with commas
xT = transpose(x);                     % now you created the column vector
y = [1 ; 2.5 ; 3.2 ; 4*pi; cos(pi)];   % column vector    
xlen = length(x)                       % length of row/col vector
ylen = length(y)                       % same value as length(x)!
%% BE CAREFUL!
% The following two vectors produces vectors of different sizes, the reason
% being linspace(x1, x2, n) creates n evenly spaced points between x1 and
% x2 , with the value of interval (x2-x1)/(n+1), while the colon operator
% (used in the form of x1:i:x2) creates an array with [x1, x1+i, x1+2i...,
% x1+mi], where m = (x2-x1)/i. Hence when creating a vector with the colon
% operator or linspace, make sure you know when to use it. In conclusion,
% linspace works with number of points, whereas the colon operator works
% with increments
%%
v1 = linspace(-5,5,10)
v2 = -5:1:5
%% Matrix Variables
A = [1 2 3; 4 5 6; 7 8 9]; % basic construction of matrix
B = repmat(A,2,1);         % you concatenated A one above the other
C = [A;A];                 % You've placed A side by side 2 times
C1 = transpose(C);         % now you transposed C!
C2 = C.';                  % still transposed! if it is only C' then it is conjugate transpose
size(C)                    % Confirm that they are tranposes of each other
size(C1)
size(C1,1)                 % You get the dimension you want!
eye(3);                    % Create identity matrix
speye(30000000);           % Create sparse identity matrix
D = ones(50,60);           % D is 50-by-60 ones
E = zeros(40);             % E is 40-by-40 zeros
%% Matrix Operations

B+C;          % addition
B-C;          % subtraction
4*B + C/5;    % multiplication and division with a constant
A+1;          % element wise addition with a constant
B*C';         % matrix multiplication
B.*C;         % element wise multiplication
B.^3          % exponents, note: do not use B^3
2*(eye(3))^3  % only possible with square matrices

%% Broadcasting
v = [1 2 3 4];
w = v';
w-v
