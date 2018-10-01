//This script demonstrate basic plot command in Scilab
clear 
clc

//Import data from file
Data = csvRead('/home/chayan/Documents/scilab-tutorials/Tutorial2_Plot/Data/Tut2_data1.csv');

//Segregate the data into variables
t = Data(:,1);
x = Data(:,2);

//Plotting x versus t
plot(t,x);

xtitle('A x versus t plot','Time','Data')

