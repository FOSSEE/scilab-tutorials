function change_plot_attribs(xlab,ylab,caption,labelsize,capsize,fontsize)
    attrib_axes = gca(); //Attributes of axes of active handle
    attrib_axes.x_label.text = xlab; //X-label
    attrib_axes.y_label.text = ylab; //Y-label
    attrib_axes.title.text = caption; //Title of the plot
    attrib_axes.x_label.font_size = labelsize; //X_label font size
    attrib_axes.y_label.font_size = labelsize; //Y_label font size
    attrib_axes.title.font_size = capsize; //Title font size
    attrib_axes.font_size = fontsize; //Font size of x-axis and y-axis
endfunction
