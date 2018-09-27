//Function to compute mean of a given data (a vector)

function mean_of_data = mymean(data)
    sum_of_data = 0;
    for iteration = 1:1:length(data)
        sum_of_data = data(iteration) + sum_of_data;
    end
    mean_of_data = sum_of_data/length(data);
endfunction
