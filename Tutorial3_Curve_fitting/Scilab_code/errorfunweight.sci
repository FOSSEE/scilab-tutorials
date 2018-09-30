//A function to compute error between computed data and measured data
function err = errorfunweight(x, time, measured_data, weight_matrix)
   err = weight_matrix.*(fit_function(time, x) - measured_data )
endfunction
