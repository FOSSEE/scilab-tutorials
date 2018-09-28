//The function to be fitted in the measured data
function y = fit_function(t, x)
   a = x(1);
   b = x(2);
   y  = a./(1+b.*t.*t)
endfunction
