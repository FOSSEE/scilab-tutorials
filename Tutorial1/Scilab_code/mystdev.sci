//A function to compute standard deviation of a given data
//Input: Data (a vector) and mean of the data as input
//Output: standard deviation of the data

function standard_dev = mystdev(data,mean_of_data)
    temp = (data - mean_of_data*ones(length(data)))^2;
    standard_dev = sqrt(sum(temp)/(length(data)-1));
endfunction
