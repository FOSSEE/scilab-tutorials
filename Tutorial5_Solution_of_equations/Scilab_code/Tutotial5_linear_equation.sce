//This scilab script is to compute the solution of a linear equation
clear 
clc

//Example of Ax + b = 0 where unique solution exists
A = [1 2 3;3 2 1;2 4 5];
b = [7;7;12];
[x,kerA] = linsolve(A,b);
disp(x,'Solution of Ax + b',kerA,'kernel of A');

//Example of Py+q = 0 where solution does not exist
P = [1 2 3;3 2 1;4 4 4]
q = [1;2;1]
[y,kerP] = linsolve(P,q);
disp(y,'Solution of Py + q',kerP,'kernel of P');

//Example of Lz+m = 0 where infinite solutions exist
L = [1 2 3;3 2 1;4 4 4]
m = [1;1;2]
[z,kerL] = linsolve(L,m);
disp(z,'Solution of Lz + m',kerL,'kernel of L');

