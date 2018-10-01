//This script demonstrates the use of ODE solver and computing the 
//solution at different times. The output is in the form of a plot 
//of time versus computed solution
clear 
clc

//Definition the function. 
function ydot = func(t,y)
  ydot = t^2*exp(-2*t) + y
endfunction

//Initial condition
y0 = -1;
//Start time
t0= 0;

//The array of time where the solution is computed
tf = 4:0.01:10;

//Calling the ODE solver
sol=ode(y0,t0,tf,func);


//Plotting the result
plot(tf,sol,'Linewidth',3)
xtitle('Dynamics of y','Time','y(t)')
