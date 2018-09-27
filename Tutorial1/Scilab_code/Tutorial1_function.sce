//This Matlab script is used to compute mean and standard deviation of data

//Clears all previous variables stored
clear 

//Clears screen
clc


//Executing the mymean function that computes the mean of a given data
exec mymean.sci;
//Executing the mystdev function that computes the standard deviation of a given data
exec mystdev.sci;


//Data for which the mean and standard-deviation is required
x = [1 2 5];

//Calling the mymean function. It takes data (a vector) as the input argument and returns mean of the data as output
mean_of_x = mymean(x);
disp(mean_of_x,'Mean of x');

//Calling the mystdev function. It takes data (a vector) and its mean as the input argument 
//It returns standard deviation of the data as output
stddev_of_x = mystdev(x,mean_of_x);
disp(stddev_of_x,'Standard deviation of x');

