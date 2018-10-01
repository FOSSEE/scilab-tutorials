//This script demonstrate multi-plotting in Scilab
clear 
clc
exec change_plot_attribs.sci;

//Import data from file
Data = csvRead('/home/chayan/Documents/scilab-tutorials/Tutorial2_Plot/Data/Tut2_data1.csv');

//Segregate the data into variables
y = Data(:,1);
x = [Data(:,4) Data(:,5)]

//Style of plot
style_plot = [1,2]

//Figure 1 is a semilog plot
fig1 = scf();
plot2d(y,x,[1,2],logflag="nl")
legends(['Length of x1','Length of x3'],style_plot,opt="ur",font_size=1);
change_plot_attribs('Time','Data','Sample semi-log plot',5,5,3) 


//Figure 2 is a loglog plot
fig2 = scf();
plot2d(y,x,style_plot,logflag="ll")
legends(['Length of x1','Length of x3'],style_plot,opt="ur",font_size=1);
change_plot_attribs('Time','Data','Figure2 (loglog)',5,5,3) 

