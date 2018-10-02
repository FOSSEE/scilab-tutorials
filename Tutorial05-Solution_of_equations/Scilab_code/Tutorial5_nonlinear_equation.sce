//This scilab script is to compute the solution of a nonlinear function with initial 
//guess x_0
clear
clc


//The nonlinear equation for which solutions are sought
exec func.sci;


//Initial guess for the solution 
t0 = 0;

//Computation of solution using fsolve
y_result = fsolve(t0,func);
//Display the solution in command window
disp(y_result,'Solution of the equation')




