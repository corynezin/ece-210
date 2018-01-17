%% Lesson 2
% Written by Brenda So and Cory Nezin
%% Objective
% After this class, you should be able to:
% 
% * Understand how to perform vector operations in MATLAB
% * Understand arithmetic and basic functions in MATLAB
% * Know how to use for statements
%% Vector Operations
% In lesson 1, we see how to make a vector with the colon operator and linspace, 
% however, if MATLAB only allows us to use these two operations on vectors, it 
% would be pretty useless. MATLAB is often used to perform numerical analysis, 
% hence it would be very useful if we can input vectors into functions and use 
% that to generate another vector. Luckily, that's what MATLAB is for! Note that 
% when you perform an operation, they are element wise operation for vectors. 

x = 0:0.01:2*pi;    % You create a vector
y = sin(x);         % Here, you perform a transformation from one vector to another
xlen = length(x)
ylen = length(y)    % xlen and ylen is equal!
plot(x,y)
%% Exercise 1 : Vector Operations
% Create a vector t, where t ranges from 0 to 2 millisecond with increments 
% T = 1e-6, and create another vector y1, where $<math xmlns="http://www.w3.org/1998/Math/MathML" 
% display="inline"><mrow><msub><mrow><mi mathvariant="italic">f</mi></mrow><mrow><mn>0</mn><mtext>?
% </mtext></mrow></msub><mo>=</mo><mn>50</mn><mtext>?</mtext><mi mathvariant="normal">Hz</mi></mrow></math>$ 
% and $<math xmlns="http://www.w3.org/1998/Math/MathML" display="inline"><mrow><mi>&beta;</mi><mo 
% stretchy="false">=</mo><mn>10</mn><mtext>?</mtext><mi mathvariant="italic">M</mi><mi 
% mathvariant="normal">Hz</mi><mtext>?</mtext><msup><mrow><mi mathvariant="italic">s</mi></mrow><mrow><mo 
% stretchy="false">&minus;</mo><mn>1</mn></mrow></msup></mrow></math>$
% 
% $$<math xmlns="http://www.w3.org/1998/Math/MathML" display="block"><mrow><msub><mrow><mi 
% mathvariant="italic">y</mi></mrow><mrow><mn>1</mn></mrow></msub><mrow><mo>(</mo><mrow><mi 
% mathvariant="italic">t</mi></mrow><mo>)</mo></mrow><mo>=</mo><mn>10</mn><mi 
% mathvariant="normal">cos</mi><mrow><mo>(</mo><mrow><mn>2</mn><mi>&pi;</mi><msub><mrow><mi 
% mathvariant="italic">f</mi></mrow><mrow><mn>0</mn><mtext>?</mtext></mrow></msub><mi 
% mathvariant="italic">t</mi><mo>+</mo><mi>&pi;</mi><mi>&beta;</mi><msup><mrow><mi 
% mathvariant="italic">t</mi></mrow><mrow><mn>2</mn></mrow></msup></mrow><mo>)</mo></mrow></mrow></math>$$

%% WRITEME: create t and y1, and run this box. It would output something very interesting!
figure;
plot(t,y1)
%% Basic Indexing in MATLAB
% To inspect certain values in vectors x and y, we can use indexing. Now we 
% are going to delve deeper into indexing next week, but here we are going to 
% give you enough information to do the homework assignment
%% Exercise 2 : Basic Indexing

% WRITEME: Index the whole x vector
% WRITEME: Index the first element in x
% WRITEME: Index the fifth element in x
% WRITEME: Index the second to fifth element in x (inclusively)
% WRITEME: Index the last element in x
%% BE CAREFUL!
% In other languages, indices start at 0, however, in MATLAB, indices start 
% at 1. Hence in matlab, the last index would be the length of the vector itself. 
%% Other vector operations
% Of course, we can perform more complicated arithmetic operations on vectors, 
% just like what we can do with scalars. What's more, there are pre-built functions 
% in matlab that allows us to obtain certain statistics. There's a lot of such 
% functions but we are only showing a few commonly used operations here
%% Exercise 3 : Other vector operations

% WRITEME: calculate sum of x
% WRITEME: calculate average of x
% WRITEME: calculate minimum in x
% WRITEME: calculate difference between adjacent elements in x
%% Practical example of vector operations : Numerical Estimation of integrals and derivatives
%% Approximate Derivatives
% Here we will look at some approximate numerical methods

x = linspace(-2,2,100);
y = x.^2;
plot(x,y)
title('x^2')
%% 
% Now, we can approximate the derivative
% 
% $$<math xmlns="http://www.w3.org/1998/Math/MathML" display="block"><mrow><mfrac><mrow><mi 
% mathvariant="normal">dy</mi></mrow><mrow><mi mathvariant="normal">dx</mi></mrow></mfrac><mo>=</mo><mrow><munder><mrow><mi 
% mathvariant="normal">lim</mi></mrow><mrow><mi>&Delta;</mi><mi mathvariant="italic">x</mi><mo>&srarr;</mo><mn>0</mn></mrow></munder><mrow><mfrac><mrow><mi 
% mathvariant="italic">y</mi><mrow><mo>(</mo><mrow><mi mathvariant="italic">x</mi><mo>+</mo><mi>&Delta;</mi><mi 
% mathvariant="italic">x</mi></mrow><mo>)</mo></mrow><mo>&minus;</mo><mi mathvariant="italic">y</mi><mrow><mo>(</mo><mrow><mi 
% mathvariant="italic">x</mi></mrow><mo>)</mo></mrow></mrow><mrow><mi>&Delta;</mi><mi 
% mathvariant="italic">x</mi></mrow></mfrac></mrow></mrow></mrow></math>$$
% 
% as
% 
% $$<math xmlns="http://www.w3.org/1998/Math/MathML" display="block"><mrow><msup><mrow><mfrac><mrow><mi 
% mathvariant="normal">dy</mi></mrow><mrow><mi mathvariant="normal">dx</mi></mrow></mfrac></mrow><mrow><mo 
% stretchy="false">&circ;</mo></mrow></msup><mo stretchy="false">=</mo><mfrac><mrow><mi 
% mathvariant="italic">y</mi><mrow><mo>(</mo><mrow><mi mathvariant="italic">x</mi><mo 
% stretchy="false">+</mo><mi>&Delta;</mi><mi mathvariant="italic">x</mi></mrow><mo>)</mo></mrow><mo 
% stretchy="false">&minus;</mo><mi mathvariant="italic">y</mi><mrow><mo>(</mo><mrow><mi 
% mathvariant="italic">x</mi></mrow><mo>)</mo></mrow></mrow><mrow><mi>&Delta;</mi><mi 
% mathvariant="italic">x</mi></mrow></mfrac><mo stretchy="false">=</mo><mfrac><mrow><mi>&Delta;</mi><mi 
% mathvariant="italic">y</mi></mrow><mrow><mi>&Delta;</mi><mi mathvariant="italic">x</mi></mrow></mfrac></mrow></math>$$
% 
% 
% 
% where$<math xmlns="http://www.w3.org/1998/Math/MathML" display="inline"><mrow><mi>&Delta;</mi><mi 
% mathvariant="italic">x</mi></mrow></math>$ is small
% 
% An easy way to do this in MATLAB is the _diff_ command which returns the 
% difference between every pair of consecutive numbers in a vector (or each column 
% of an array).

dydx = diff(y)./diff(x);
plot(x,dydx)
%% 
%  _diff _returns one less element than the original vector, this simple 
% strategry returns an error.  Fix this by plotting against a new x, _xhat.  _Note 
% that there are many valid ways to do this. You will need _xhat _later so make 
% sure you get it!
%% Excercise 4: Approximate Derivative

%xhat = ?
plot(xhat,dydx)
%% Approximate Integrals
% Now suppose we want to approximate the cumulative integral of a function, 
% i.e.
% 
% $$<math xmlns="http://www.w3.org/1998/Math/MathML" display="block"><mrow><mi 
% mathvariant="italic">Y</mi><mrow><mo>(</mo><mrow><mi mathvariant="italic">u</mi></mrow><mo>)</mo></mrow><mo>=</mo><mrow><msubsup><mrow><mo>&int;</mo></mrow><mrow><mi 
% mathvariant="italic">c</mi></mrow><mrow><mi mathvariant="italic">u</mi></mrow></msubsup><mrow><mi 
% mathvariant="italic">y</mi><mrow><mo>(</mo><mrow><mi mathvariant="italic">x</mi></mrow><mo>)</mo></mrow><mi 
% mathvariant="normal">dx</mi><mo>=</mo><mrow><munder><mrow><mi mathvariant="normal">lim</mi></mrow><mrow><mi>&Delta;</mi><mi 
% mathvariant="italic">x</mi><mo>&srarr;</mo><mn>0</mn></mrow></munder><mrow><mtext>??
% </mtext><mrow><msub><mrow><mo>&sum;</mo></mrow><mrow><mi mathvariant="italic">c</mi><mo>+</mo><mi 
% mathvariant="italic">n</mi><mi>&Delta;</mi><mi mathvariant="italic">x</mi><mtext>?
% </mtext><mo>&isinv;</mo><mrow><mo>[</mo><mrow><mi mathvariant="italic">c</mi><mo>,</mo><mi 
% mathvariant="italic">u</mi></mrow><mo>]</mo></mrow></mrow></msub><mrow><mi mathvariant="italic">y</mi><mrow><mo>(</mo><mrow><mi 
% mathvariant="italic">c</mi><mo>+</mo><mi mathvariant="italic">n</mi><mi>&Delta;</mi><mi 
% mathvariant="italic">x</mi></mrow><mo>)</mo></mrow><mi>&Delta;</mi><mi mathvariant="italic">x</mi></mrow></mrow></mrow></mrow><mtext>?
% </mtext></mrow></mrow></mrow></math>$$
% 
% Again, we can approximate this by simply dropping the limit
% 
% $$<math xmlns="http://www.w3.org/1998/Math/MathML" display="block"><mrow><msup><mrow><mi 
% mathvariant="italic">Y</mi></mrow><mrow><mo>&circ;</mo></mrow></msup><mo>=</mo><mrow><msub><mrow><mo>&sum;</mo></mrow><mrow><mi 
% mathvariant="italic">c</mi><mo>+</mo><mi mathvariant="italic">n</mi><mi>&Delta;</mi><mi 
% mathvariant="italic">x</mi><mtext>?</mtext><mo>&isinv;</mo><mrow><mo>[</mo><mrow><mi 
% mathvariant="italic">c</mi><mo>,</mo><mi mathvariant="italic">u</mi></mrow><mo>]</mo></mrow></mrow></msub><mrow><mi 
% mathvariant="italic">y</mi><mrow><mo>(</mo><mrow><mi mathvariant="italic">c</mi><mo>+</mo><mi 
% mathvariant="italic">n</mi><mi>&Delta;</mi><mi mathvariant="italic">x</mi></mrow><mo>)</mo></mrow><mi>&Delta;</mi><mi 
% mathvariant="italic">x</mi></mrow></mrow><mtext>?</mtext></mrow></math>$$
% 
% The _cumsum_ function in MATLAB returns the running sum of a vector, i.e.
% 
% $$<math xmlns="http://www.w3.org/1998/Math/MathML" display="block"><mrow><msub><mrow><mi 
% mathvariant="normal">cumsum</mi><mrow><mo>(</mo><mrow><mi mathvariant="italic">v</mi></mrow><mo>)</mo></mrow></mrow><mrow><mn>1</mn><mo>,</mo><mi 
% mathvariant="italic">n</mi></mrow></msub><mo>=</mo><mo>&sum;</mo><mi mathvariant="italic">v</mi><mrow><mo>(</mo><mrow><mn>1</mn><mo>:</mo><mi 
% mathvariant="italic">n</mi></mrow><mo>)</mo></mrow></mrow></math>$$
% 
% Use _cumsum_ to approximate the running integral of y.  Again, there are 
% a few valid ways of doing this.
%% Excercise 5. Cumulative Integral

%Y = ?
plot(xhat,Y)
%% 
% Now, use the approximate derivative to get the original function, y back 
% as _yhat _and plot it.  You may need to use/create another variable for the 
% x axis when plotting.
%% Excercise 6.  Anti-derivative.

%yhat = ?
%plot(?)
%% Matrix
% Matrix is closely related to vectors, and we have also explored some matrix 
% operations last class. This class, we are going to explore 3 functions that 
% are very useful but are hard to grasp for beginners, namely reshape, meshgrid, 
% row-wise and column-wise operations.
%% Reshape
% When you are reshaping an array / matrix, the first dimension is filled first, 
% and then the second dimension, so on and so forth

M = 1:100;
N1 = reshape(M,2,2,[]);    % It would create a 2*2*25 matrix
N2 = reshape(M,[2,2,25]);  % Same as N1
N2(:,:,25)                 % Gives you 97,98,99,100
N2(:,1,25)                 % Gives you 97 and 98
%% Meshgrid
% Meshgrid is quite hard to understand. Think of it as a way to replicate arrays, 
% like the following example:
% 
% 

a = 1:3;
b = 1:5
[A,B] = meshgrid(a,b) 
%% 
% You have created two arrays A and B, note that in A, the vector a is copied 
% row-wise, while the vector b is transposed and copied column-wise. This is useful, 
% because when you lay one above the other, you essentially create a CARTESIAN 
% PRODUCT, and it is useful when we need to plot a 3D graph: https://en.wikipedia.org/wiki/Cartesian_product 
% 
% Here is a more complicated example to show you when meshgrid is useful

a1 = -2:0.25:2;
b1 = a1;
[A1,B1] = meshgrid(a1);
% Here we plot the surface of f(x) = x*exp^(x.^2+y.^2)
F = A1.*exp(-A1.^2-B1.^2);
surf(A1,B1,F)
%% Row-wise / Column-wise operations

H = magic(4)     % create the magical matrix H
sum(H,1)         % column wise sum, note that this is a row vector(default)    
fliplr(H)        % flip H from left to right
flipud(H)        % flip H upside down
H(1,:) = fliplr(H(1,:)) % flip only ONE row upside down
H(1,:) = []      % delete the first column
%% Exercise 7 : Matrix Operations

% WRITEME: Create a random 4-by-5 matrix H2 with randi that draws random numbers from the set 1:20. Use help randi  
% WRITEME: Take the sum of second column of H2
% WRITEME: Take the average of the third row of H2
% WRITEME: reshape the 4-by-5 matrix into a 2-by-2-by-5 3D array, and name the array as C
% WRITEME: Delete the second row of each layer in C
%% Control Sequence - For loops
% Similar to other languages, MATLAB have if, while and for control sequences. 
% For loops is one of the commonly used control sequences in MATLAB. We will continue 
% the discussion of if and while in the next lesson

n = 1000;
D = zeros(1000);    % This is called pre-allocation
D(1) = 1;
D(2) = 2;
tic
for i = 3:n
    D(i) = D(i-1)+D(i-2);
end
toc
%% BE CAREFUL!
% For loops are considered the more inefficient type of operation in MATLAB 
% Do not use it unless it is completely necessary. The action of using vectors 
% to perform operations is called VECTORIZATION. You are going to explore more 
% on computational efficiency in the next lesson.