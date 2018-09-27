//This function is to import data from a csv file and store it in a variable
//Using the data mean and standard deviation of the data is computed
clear
clc

exec mymean.sci;
exec mystdev.sci;

//Import data from file
Data = csvRead('/home/chayan/Documents/scilab-tutorials/Tutorial1/Data/Tut1_data1.csv');
x = Data(:,1);
y = Data(:,2);


//Compute mean of the imported data
mean_of_Data_x = mymean(x);

//Compute standard deviation of the imported data
standard_deviation_of_Data_x= mystdev(x,mean_of_Data_x);


//Display mean and standard deviation in command window
disp(mean_of_Data_x,'Mean of x',standard_deviation_of_Data_x,'Standard deviation of x')

