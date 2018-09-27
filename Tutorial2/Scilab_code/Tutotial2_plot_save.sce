//This script demonstrate exporting plots to svg/pdf files
clear 
clc

//Import data from file
Data = csvRead('/home/chayan/Documents/scilab-tutorials/Tutorial2/Data/Tut2_data1.csv');

//Segregate the data into variables
y = Data(:,1);
x1 = [Data(:,2) Data(:,4)]
x2 = [Data(:,3) Data(:,4)]

//Figure 1 is y versus x1
fig1 = figure();
plot2d(y,x1); 

//Figure 2 is y versus x2
fig2 = figure();
plot2d(y,x2); 

//Export Figure 1 as svg file
xs2svg(fig1,'plot_y_versus_x1')

//Export Figure 2 as pdf file
xs2pdf(fig2,'plot_y_versus_x2')
