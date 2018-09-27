//This script demonstrate exporting plots to svg/pdf files
clear 
clc

//Import data from file
Data = csvRead('/home/chayan/Documents/scilab-tutorials/Tutorial2_Plot/Data/Tut2_data1.csv');

//Segregate the data into variables
y = Data(:,1);
x1 = Data(:,2)

//Figure 1 is y versus x1 with linewidth = 3
//fig1 = figure();
fig1 = scf(1); 
plot(y,x1,'Linewidth',3);

//Export Figure 1 as svg file
xs2svg(fig1,'plot_y_versus_x1');

//Export Figure 2 as pdf file
xs2pdf(fig1,'plot_y_versus_x1');