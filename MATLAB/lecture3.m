%%%
%% Program name: Lecture 3 Code
%% Author: W. Riley Casper
%% Last updated: 01/18/2021
%% Description: We continue to explore matrix manipulation in the context of
%% image manipulation.


%% Horizontal concatenation
% We can "glue" matrices together side-by-side via concatenation.
% For example, starting with a 3x4 matrix and 3x2 matrix
%     [ 3 2 1 2 ]         [ 2 1 ]
% A = [ 4 9 7 1 ]     B = [ 3 2 ]
%     [ 9 1 1 0 ]         [ 4 4 ]
% we can make a 3x6 matrix where we glue B to the end of A
%
% [ 3 2 1 2 2 1 ]
% [ 4 9 7 1 3 2 ]
% [ 9 1 1 0 4 4 ]
% 
% This is called horizontal concatenation!
% NOTE: to concatenate two matrices horizontally, they must both have the same
% number of rows

% To the same thing in MATLAB, we start by creating A and B
A = [3 2 1 2; 4 9 7 0; 9 1 1 0]
B = [2 1; 3 2; 4 4]
% Now to do the same concatenation as above, we use square brackets
[A B]

%% Vertical concatenation
% We can also "glue" matrices together top-to-bottom via concatenation.
% For example, starting with a 3x2 matrix and 1x2 matrix
%     [ 1 2 ]
% A = [ 3 4 ]     B = [ 4 4 ]
%     [ 4 1 ]
% we can make a 4x2 matrix where we glue B to the bottom of A
%
% [ 1 2 ]
% [ 3 4 ]
% [ 4 1 ]
% [ 4 4 ]
% 
% This is called vertical concatenation!
% NOTE: to concatenate two matrices vertically, they must both have the same
% number of columns

% To the same thing in MATLAB, we start by creating A and B
A = [1 2; 3 4; 4 1]]
B = [4 4]
% Now to do the same concatenation as above, we use square brackets
[A;B]
% Notice that we use a colon for vertical concatenation, and we do a space for
% horizontal concatenation.


%% Image Basics
% To read in an image in MATLAB we use the function imread()
% For example the following command reads in an image called mittens.jpg
A = imread("mittens.jpg");
% NOTE: it's important that the image is in the current working directory!
% The varable A now stores the image as a matrix of RGB values.  To see the
% size of the matrix, we use the command size()
size(A)
% This should return 1200 1200 3.  The final 3 refers to the RGB color values,
% so the first two determine the image size (number of pixels).

% To display the image we can use
imshow(A)

% An image is made up of pixels.  Each pixel has a three integers associated to
% it, called its RGB values, and each combination defines a unique color.  The
% integers themselves rage between 0 and 255, giving 256x256x256=16777216
% possible colors.
%
% Examples:
%   * Pure white would be (255,255,255)
%   * Pure red would be (255,0,0)
%   * Making the value smaller (170,0,0) gives a darker red
%   * Mixing pure blue and green (0,255,255) gives a teal color

% To get the R value of pixel (500,500), we can just look at A
A(500,500,1)
% To get the G value of pixel (500,500), we can just look at A
A(500,500,2)

% We can convert to grayscale by using rgb2gray()
A_gray = rgb2gray(A);
% This replaces the RGB value of each pixel with a single integer between 0 and
% 255, representing the grayness of the pixel with black being 0 and white
% being 255. Notice A_gray is just a usual matrix, whose entries are integers

% Using imshow() now produces a black and white image
imshow(A_gray)

%% Resizing images with downsampling
% Suppose we want to make our image about 1/4 its original size.  One way to do
% this is via downsampling, where we throw away 3 out of every 4 pixels.
AA = A(1:4:end,1:4:end,:)

% The size should now be 300x300 instead of 1200x1200
size(AA)

% Now if we run imshow() we will see an image which is 1/4 as large as the previous
imshow(AA)

%% Superimposing images
% We can put one image on top of another by superimposing the images
% Let's load a second image:
B = imread("moon.jpg")
% NOTE: this image needs to be in the current working directory

% See what this image looks like
imshow(B)

% Now let's put our smaller image AA into a patch of B
% We just have to choose a patch with the same number of pixels and replace the
% values in B with the values in AA
B(201:500,201:500,:) = AA;

% Now let's see what our image looks like
imshow(B)

%% Linear combinations
% The basic algebraic operations of linear algebra are
%   * scalar multiplication
%   * vector/matrix addition
% In MATLAB, these operations are performed with * and +

% For example, to multiply each entry of a matrix A by 2
2*A

% To add a matrix A and B (both of the same size)
A + B

