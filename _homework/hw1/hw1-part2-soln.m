%% Problem 1
% Create the row vector x
x = 3:2:101;
% Create the row vector y
y = linspace(-2,3,1000);
% Create the matrix A
A = [4 3 1; 2 1 2; 1 4 4];

%% Problem 2
% Read the matrix into a matrix B.  Don't forget the semicolon!
B = imread("matrix.jpg");
% Use rgb2gray to create a matrix B_gray which is the black and white version of B
B_gray = rgb2gray(B);
% Use size() to create a vector q whose value is the size of B
q = size(B);
% Create a variable npixels whose value is the number of pixels in B
% Note that the number of pixels in B is the product q(1)*q(2)
npixels = q(1)*q(2)

