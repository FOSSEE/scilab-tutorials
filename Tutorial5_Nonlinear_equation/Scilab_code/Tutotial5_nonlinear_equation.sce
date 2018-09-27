//This scilab script is to compute the solution of a nonlinear function with initial 
//guess x_0
clear
clc


//The nonlinear equation for which solutions are sought
function y = nonlinear_func(x)
  y = cos(x)*sin(x) - tan(x) + 1
endfunction


//Initial guess for the solution
x0 = 0;

//Computation of solution using fsolve
y_result = fsolve(x0,nonlinear_func);

disp(y_result,'Solution of the equation')
