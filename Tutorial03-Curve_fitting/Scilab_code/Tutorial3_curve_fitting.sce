//This function is for curve fitting using least-square

clear
clc

//The function to be fitted
exec fit_function.sci;
//The error function
exec errorfun.sci;

//Read measured data
Data = csvRead('../Data/Tut3_Data.csv')
//Time stamp
time = Data(:,1);
//Measured output
measured_data = Data(:,2);

// initial parameters guess
initial_condition = [1 ; 1];

//Call least square function, 
//Output is function value (func_value_xopt) at optimal coefficients (x_optimal))
[func_value_xopt,coeff_optimal] = leastsq(list(errorfun,time,measured_data),initial_condition)

error = errorfun(coeff_optimal,time,measured_data)
disp(error,'The error after least square approximation')


// Plot of measured data and fitted data versus time
fitted_data = fit_function(time, coeff_optimal);
plot2d(time, [measured_data,fitted_data], [-1,2])
legend(["measure points", "fitted curve"],[-1,2],"ur");
xtitle("a simple fit with leastsq","time","data")
