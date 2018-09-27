//This script demonstrate multi-plotting in Scilab
clear 
clc

//Import data from file
Data = csvRead('/home/chayan/Documents/scilab-tutorials/Tutorial2/Data/Tut2_data1.csv');

//Segregate the data into variables
y = Data(:,1);
x = [Data(:,4) Data(:,5)]


//Figure 1 is a semilog plot
fig1 = figure();
plot2d(y,x,[1,2],logflag="nl")
legends(['Length of x1','Length of x3'],[1,2],opt="ur",font_size=1);


//Figure 2 is a loglog plot
fig2 = figure();
plot2d(y,x,[3,-1],logflag="ll")
legends(['Length of x1','Length of x3'],[3,-1],opt="ur",font_size=1);
