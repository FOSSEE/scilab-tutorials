//This script demonstrate plotting in Scilab
clear 
clc

//Import data from file
Data = csvRead('/home/chayan/Documents/scilab-tutorials/Tutorial2/Data/Tut2_data1.csv');

//Segregate the data into variables
y = Data(:,1);
x1 = Data(:,2);
x2 = Data(:,3);
x3 = Data(:,4);
x4 = Data(:,5);

//Plotting y versus x1
plot(y,x1);




