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
//Display the solution in command window
disp(y_result,'Solution of the equation')


//Plot of cos(x)*sin(x) and tan(x)-1 to check validity of the solution of fsolve
//To create data-points for computation of the functions cos(x)*sin(x) and tan(x)-1
t = linspace(-201,-200);
z1 = cos(t).*sin(t);
z2 = tan(t)-1*ones(length(t));

//To plot t versus cos(t)*sin(t) and tan(t)-1
plot2d(t,[z1' z2'])


