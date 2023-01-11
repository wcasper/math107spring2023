%%%
%% Program name: Lecture 4 Code
%% Author: W. Riley Casper
%% Last updated: 02/03/2021
%% Description: We look at linear combinations and built-in functions in MATLAB


%% Linear combinations
% DEF: If A and B are matrices of the same size, a linear combination is a*A + b*B

% Example:
A = [1,2; 3, 1]  % 2x2 matrix
B = [2,1; 2, 2]  % 2x2 matrix
L = 2*A + 3*B    % L is a linear combination of A and B

% Additional points:
%   * especially important for vectors
%   * can involve more than two matrices
%   * we can use subtraction
%   * important problem: how to figure out linear combination

% DEF: A convex combination of A and B is a*A + (1-a)*A with 0 <= a <= 1

% Example:
C = 0.2*A + 0.8*B % C is a convex combination of A and B

% Additional points:
%   * it's like a weighted average!
    

%% Spooky project
% load the images ghost.jpg and spooky-woods.jpg
ghost = imread("ghost.jpg");
woods = imread("spooky-woods.jpg");

% place the ghost in the woods:
haunt = woods;
haunt(601:830,901:1119,:) = ghost;

% make the ghost translucent
spook = 0.4*haunt + 0.6*woods;

%% built-in functions




