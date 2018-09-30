//This script demonstrates the use of ODE solver
clear 
clc

//Definition the function. 
//The function is dy/dt = cos(t)*sin(t) - tan(t) + 1
function ydot = func(t,y)
  ydot = t^2*exp(-2*t) + y
endfunction

//Initial condition of the problem, a scalar or vector
y0 = -1;
//Initial time, a real scalar
t0= 0;
//The time at which the solution is computed
t = 0.2;
//Calling the ode solver 
sol=ode(y0,t0,t,func);
//Displaying the solution
disp(sol,"y(t) at t = 0.2");

