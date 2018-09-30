//This function is to import data from a csv file and store it in a variable
//Using the data mean and standard deviation of the data is computed
clear
clc

exec mymean.sci;
exec mystdev.sci;

//Import data from csv file
Data = csvRead('/home/chayan/Documents/scilab-tutorials/Tutorial1_Basic/Data/Tut1_data1.csv');
x = Data(:,1);
y = Data(:,2);


//Compute mean of the imported data
mean_of_x = mymean(x);
//Compute standard deviation of the imported data
stdev_of_x= mystdev(x,mean_of_x);

//Data to be exported (It can be a scalar, vector or matrix)
data_to_write = [mean_of_x stdev_of_x];
//Export data to a csv file
csvWrite(data_to_write,'/home/chayan/Documents/scilab-tutorials/Tutorial1_Basic/Data/Tut1_data3.csv')
