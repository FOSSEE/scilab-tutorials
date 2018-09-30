//This script demonstrates multi-plotting in Scilab
clear 
clc
exec change_plot_attribs.sci;

//Import data from file
Data = csvRead('/home/chayan/Documents/scilab-tutorials/Tutorial2_Plot/Data/Tut2_data1.csv');

//Segregate the data into variables
t = Data(:,1);
x = [Data(:,2:4)]

//Style of plot
style_plot = [1,2,4]

//Fixing the range of plot
//Range is defined by [xmin,ymin,xmax,ymax]
range_of_plot = [1,-1e-5,15,8e-05]; 

//Plotting y versus two data sets
//plot2d(t,x,style_plot); 
plot2d(t,x,style_plot,rect=range_of_plot); 
 
//Font size and labels for legends
//For legends "ur" for upper right
legends(['x1','x2', 'x3'],style_plot,opt="ur",font_size=2); 

//Call function to change plot attributes
change_plot_attribs('Time','Data','Data versus Time',5,5,3) 

//For thickness of the plots
attrib = gcf();
attrib.children(2).children(1).children.thickness = 3;





