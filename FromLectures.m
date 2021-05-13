
 % Machine Learning practice

 % lecture 1

5+6
3-2
5*8
1/2
2^6

1==2 % false
1~=2

1&&0
1||0
xor(1,0)
PS1('>> ')

a = 3
a=3; % semicolon suppressing output
b = 'string';
disp(a);
disp(sprintf('2 decimals: %0.2f',a));
format long
format short

A = [1 2; 3 4; 5 6] % 3by2
v = [1 2 3] % 3by1

v = 1:0.1:2 % start from 1 increasing by 0.1 up to 2

v = 1:6

ones(2,3) % 2by3 with element 1

c = 2*ones(2,3)

w = zeros(2,3)

w = rand(3,3) %random   

w = randn(1,3)

hist(w) %histogram
hist(w,50) %with 50 bins

eye(4) % Identity matrix

%help function

size(A) % size of the matrix
length(v) % return the longest dimension

pwd % current directory
ls % list directory

load filename.dat %load data from file
load('filename.dat') % it also works
who % who shows what variables are in memory
whos % more detailed view

clear variablename %remove variable

save hello.mat v; %save vector v with filename hello.mat
clear % remove all variables

save hello.txt v -ascii %save as text (ASCII)

A = [1 2; 3 4; 5 6]
A(3,2) %print (3,2) component in matrix A
A(2,:) %print everything in the second row

% ":" means every element along with that row/columns
A([1 3],:) % print everything in the first and third columns
% even I can assign new elements using that above

A = [A , [100;101;102]] % append another column vector on the right

A(:) % put all elements of A into a single vector


A = [1,2; 3,4; 5,6]
B = [11,12; 13,14; 15,16]
C= [A B] % put B at the right side. It is as same as [A,B]

C =[A;B] % put B at the bottom


% computing on data
A = [1,2; 3,4; 5,6]
B = [11,12; 13,14; 15,16]
C = [1 1; 2 2]

A*B %matrix multiplication

A .* B %elementwise multiplication
A .^ 2 %elementwise squaring
v = [1; 2; 3]

1 ./ A
1 ./ v

log(v) % elementwise log
exp(v) % elementwise exponent
abs(v) % elementwise absolute value

v + ones(length(v),1) % increase every element in vector v by 1
v + 1 % it is the same

A' % A transpose

a = [1 15 2 0.5]
max(a) % return the maximum value
[val, ind] = max(a) % return maximum value and its index 
max(A) % column-wise

a < 3 % element-wise and return its result
find(a<3) % find and return its index 

% 1-index!!

A = magic(3) % magic function returns magic squares (N>=3)

[r,c] = find(A >= 7) % r = row, c= colamd

sum(a)
prod(a)
floor(a) % round down
ceil(a) % round up
rand(3)
max(rand(3),rand(3))

max(A,[],1) % maximum column-wise
max(A,[],2) % maximum row-wise

max(max(A))
max(A(:)) % it is the same

A = magic(9)
sum(A,1) % col-wise sum
sum(A,2) % row-wise sum

%diagnal sum
A .* eye(9)
sum(sum(A .* eye(9))) % top left to bottom right
sum(sum(A .* flipud(eye(9)))) % top bottom to top right

A = magic(3)

pinv(A) %inverse matrix



%plotting data


 t = [0: 0.01:0.98]
 y1 = sin(2*pi*4*t);
 plot(t,y1);
 y2 = cos(2*pi*4*t);
 
 hold on; % make a new plot on the top of the previous plot
 plot(t,y2)
 plot(t,y2, 'r') % with color red
 xlabel('time') %label x-axis
 ylabel('value') %label y-axis
 legend('sin','cos') % legend sin and cos
 title('my plot') % put title on the top
 print =dpng 'myPlot.png' % save the plot with filename
 close % close the plot 
 figure(1): plot(t,y1);
 figure(2): plot(t,y2);
 subplot(1,2,1); % divides plot a 1x2 grid( first two para), access the first element
 
 axis([0.5 1 -1 1]) %change the axis range (x,y order)
 clf; % clear figures
 
 A = magic(5);
 imagesc(A); % visualize matrix A
 colorbar;
 colormap gray; %change color to gray
 A(1,2)
 A(4,5)
 
  
  
  %for while if statements, and functions
  
  v = zeros(10,1)
  for i=1:10,
    v(i) = 2^i;
    end
 
 
 %another methods
 indices = 1:10;
 for i =indices,
   display(i);
 end;
   
   
  i = 1;
  while i<=5,
    v(i) = 100;
    i = i +1;
  end;
  v
  
  i =1,
  while true,
    v(i)=999,
    i = i+1;
    if i ==6,
      break;
    end;
  end;
  
  v(1)=2;
  if v(1)==1,
    disp('value is 1');
  elseif v(1) ==2,
    disp('value is 2');
  else
    disp('value is not 1 or 2');
  end;
  
  exit; % exit command
  quit; % as same as above
 

% how to define a function

function y = squareThisNumber(x)
   
   y = x^2;
   
%should be in the same directory
squareThisNumber(5)


%Octave search path(advanced/optional)
addpath('C:\Users\Joseph Kim\Desktop')

% I can use any function in the directory even though I am in another directoy


%return many values in a function
function [y1,y2] = squareAndCubeThisNumber(x)
  y1=x^2;
  y2=x^3;
  
[a,b] = squareAndCubeThisNumber(5);


%example of a cost function

X = [1 1; 1 2; 1 3]
y = [1;2;3]
theta= [0;1];


  endif



%vectorization
  