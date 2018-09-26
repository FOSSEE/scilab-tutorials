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
