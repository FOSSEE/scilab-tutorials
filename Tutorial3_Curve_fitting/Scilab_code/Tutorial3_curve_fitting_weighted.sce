//This function is for curve fitting using least-square

clear
clc

//The function to be fitted
exec fit_function.sci;
//The error function
exec errorfunweight.sci;

//Read measured data
Data = csvRead('/home/chayan/Documents/scilab-tutorials/Tutorial3_Curve_fitting/Data/Tut3_Data.csv')
//Time stamp
time = Data(:,1);
//Measured output
measured_data = Data(:,2);

// weights for data fitting
weight_matrix = [1 1 1 1 1 1 5 5 5 5 5 5 5]';


//  minimize  f(x) = sum_i  weight_matrix(i)^2 (weight_matrix(tm(i),a,b) - measured_data(i))^2
// initial parameters guess
initial_condition = [1 ; 1];

//f is the function value at optimal x (xopt)
[func_value_xopt,x_optimal] = leastsq(list(errorfunweight,time,measured_data,weight_matrix),initial_condition)

error = errorfunweight(x_optimal,time,measured_data,weight_matrix)
disp(error,'The error after least square approximation')


// a small graphic 
fitted_data = fit_function(time, x_optimal);
plot2d(time, [measured_data,fitted_data], [-1,2])
legend(["measure points", "fitted curve"],[-1,2],"ur");
xtitle("a simple fit with leastsq","time","data")
