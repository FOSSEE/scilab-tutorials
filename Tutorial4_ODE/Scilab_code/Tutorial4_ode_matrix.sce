//This script demonstrates the use of ODE solver when matrix is involved
clear 
clc

//Definition of the function
function ydot = func(t,y)
  ydot = A*y + ones(3,1);
endfunction

//Defining the matrix
A = [1 2 1;9 6 1;1 3 4];
//Initial condition
y0 = [-1;2;3];
//Start time
t0= 0;
//The time at which the solution is computed
t = 0.2;
//Calling the ode solver 
sol=ode(y0,t0,t,func);
//Displaying the solution
disp(sol,"y(t) at t = 0.2");
