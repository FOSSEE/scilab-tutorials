//This is script to define a fuction
function y = functwovar(t)
    x = t(1);
    z = t(2);
    y = [x^2+z^2-1;x^2*exp(-2*x) + z]
endfunction
