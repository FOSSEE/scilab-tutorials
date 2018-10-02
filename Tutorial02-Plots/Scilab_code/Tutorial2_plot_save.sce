//This script demonstrate exporting plots to svg/pdf files
clear 
clc

//Import data from file
Data = csvRead('../Data/Tut2_data1.csv');

//Segregate the data into variables
t = Data(:,1);
x = Data(:,2)

//Ploting the figure. Name of the figure is fig1;
//Use the field Linewidth to specify thickness of the plot
fig1 = scf(1); 
plot(t,x,'Linewidth',3);

//Adding title, xlabels and ylabels
//Changing thickness and textsize in plot
attrib_axes = gca(); //Attributes of axes of active handle
attrib_axes.x_label.text = 'Time'; //X-label
attrib_axes.y_label.text = 'Data'; //Y-label
attrib_axes.title.text = 'x versus t'; //Title of the plot
attrib_axes.x_label.font_size = 5; //X_label font size
attrib_axes.y_label.font_size = 5; //Y_label font size
attrib_axes.title.font_size = 5; //Title font size
attrib_axes.font_size = 4; //Font size of x-axis and y-axis

//Export Figure 1 as svg file
xs2svg(fig1,'plot_y_versus_x1');

//Export Figure 2 as pdf file
xs2pdf(fig1,'plot_y_versus_x1');
