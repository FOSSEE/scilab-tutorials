//Script for Matrix manipulation tutorial
//This script gives a demonstration of a few basic matrix operations used in Scilab

//Manual entry of matrices (A,B,x)
A = [1 2 3;3 2 1;2 4 5];
B = [5 4 2;1 8 9;5 4 1];
x = [1;2;3];

//Elementwise Matrix operations
//Summation of two matrices
Mat_Sum = A + B;
disp(Mat_Sum,'A+B');

//Subtraction of a matrix from another
Mat_Sub = A - B;
disp(Mat_Sub,'A-B');

//Elementwise multiplication of two matrices
Mat_element_product = A.*B;
disp(Mat_element_product,'A.*B');

//Elementwise square of a matrix
Mat_element_square = A.*A;
disp(Mat_element_square,'A.*A');

//Product of a scalar and matrix 
Mat_scalar_product = 5*A;
disp(Mat_scalar_product,'5*A');

//Elementwise square-root of a matrix
Mat_sqrt = sqrt(A);
disp(Mat_sqrt,'sqrt(A)');

//Exponential of a matrix
Mat_exp = exp(A);
disp(Mat_exp,'exp(A)');



//Matrix operations
//Transpose of a matrix
Mat_trans = A';
disp(Mat_trans,'Atranspose');

//Product of two matrices
Mat_product = A*B;
disp(Mat_product,'A*B');

//Product of a matrix and vector
Mat_vec_product = A*x;
disp(Mat_vec_product,'A*x');

//Square of a matrix
Mat_square = A*A;
disp(Mat_square,'A*A');

//Higher powers of a matrix
Mat_power_3 = A^3;
disp(Mat_power_3, 'A^3');

Mat_power_5 = A^5;
disp(Mat_power_5,'A^5');


//Range and size of matrices
//Size of a matrix
size_of_matrix = size(A);

//Row and column size of a vector/matrix
[row_size,column_size] = size(x);

//Total number of elements in a matrix
total_elements = length(A);

//To extract an element of A
Mat_element_31 = A(3,1);
disp(Mat_element_31,'3rd row, 1st col element of A');

//To extract a column of a matrix
Mat_second_column = A(:,2);
disp(Mat_second_column,'Second column of A');


//To extract two columns of a matrix
Mat_first_two_column = A(:,1:2);
disp(Mat_first_two_column,'First two columns of A');

//To extract a row of a matrix
Mat_third_row = A(3,:);
disp(Mat_third_row,'Third row of A');


//Construction of special matrices
//Identity matrix construction
Identity_3 = eye(3,3);
disp(Identity_3,'3 X 3 Identity matrix');

//Zero matrix construction
Zero_32 = zeros(3,2);
disp(Zero_32,'3 X 2 Zero matrix');

//All ones matrix
Ones_45 = ones(4,5);
disp(Ones_45,'4 X 5 all ones matrix');

