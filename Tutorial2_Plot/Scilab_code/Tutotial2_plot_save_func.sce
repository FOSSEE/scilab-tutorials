//This script demonstrate exporting plots to svg/pdf files
clear 
clc

exec change_plot_attribs.sci;

//Import data from file
Data = csvRead('/home/chayan/Documents/scilab-tutorials/Tutorial2_Plot/Data/Tut2_data1.csv');

//Segregate the data into variables
t = Data(:,1);
x = Data(:,2)

//Ploting the figure. Name of the figure is fig1;
//Use the field Linewidth to specify thickness of the plot
fig1 = scf(1); 
plot(t,x,'Linewidth',3);

//Call function to change plot attributes
//Arguments (x_label,y_label,title,label_size,title_size,fontsize)
change_plot_attribs('Time','Data','x versus t',7,6,3) 

//Export Figure 1 as svg file
xs2svg(fig1,'plot_y_versus_x1');

//Export Figure 2 as pdf file
xs2pdf(fig1,'plot_y_versus_x1');
