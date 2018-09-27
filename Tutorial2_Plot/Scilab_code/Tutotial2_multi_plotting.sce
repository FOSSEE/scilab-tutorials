//This script demonstrate multi-plotting in Scilab
clear 
clc

//Import data from file
Data = csvRead('/home/chayan/Documents/scilab-tutorials/Tutorial2_Plot/Data/Tut2_data1.csv');

//Segregate the data into variables
y = Data(:,1);
x = [Data(:,2) Data(:,4)]

//Fixing the range of plot
//Range is defined by [xmin,xmax,ymin,ymax]
range_of_plot = [-10,1e-05,20,10e-05]

//Style of plot
//Stricly positive value represent the color
//Negative or zero value means given curve points are drawn using marks 
//For color of marks use polyline property
style_plot = [-1,2] 

//Plotting y versus two data sets
plot2d(y,x,style_plot,rect=range_of_plot); 


//For labelling axes and adding a title to the plot 
xtitle('Plot of Time versus Length_x1 and Length_x3','Time','Length');


//For legends "ur" for upper right
//legends(['Length of x1','Length of x3'],[-1,2]); //Default case 
//legends(['Length of x1','Length of x3'],[-1,2],opt="ur"); //Position of the legend box
legends(['Length of x1','Length of x3'],[-1,2],opt="ur",font_size=2); //Font size of the legends






