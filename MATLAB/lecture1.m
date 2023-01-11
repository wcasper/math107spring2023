%%%
%% Program name: Lecture 1 Code
%% Author: W. Riley Casper
%% Last updated: 01/18/2021
%% Description: This program demonstrates the execution of several basic MATLAB
%% commands as well as how to define and undefine variables.  This part here is
%% called the HEADER, and describes important information about the program
%% that you are writing.  Including a header does not change the behavior of
%% the program.  However, it is a very important part of documenting your code.
%%%

%% mfiles
% MATLAB can be used both in an interactive mode, where we are typing commands
% directly into the interface, and by running scripts called "mfiles".  In
% fact, this file itself is an example of an mfile (as is indicated by the
% extension .m in the file name).
%
% Mfiles are composed of two things
%   -- comments, which MATLAB ignores
%   -- commands, which MATLAB runs sequentually
%
% While comments are completely ignored by MATLAB, they are still very
% important since they promote the readability of code.  With a poorly
% commented file, you might come back at the end of the semester and have no
% idea what you were doing!  However, if there are good comments you can still
% pick up that file months later and have a good understanding of what's what.

%% Basic operations
% MATLAB comes with all the usual operations already built in

% this will return ans = 8
3 + 5
% this will return ans = 3
sqrt(9)
% this will return 1
sin(pi/2)

%% Variables
% We can define variables in MATLAB by using the = operator.
% Variables can then be used directly in math expressions

% this defines a variable x and sets it equal to 1
x = 1
% this redefines the variable x and sets it equal to 2
x = 2
% this will return ans = 8
x^3

% Notice that when we define a variable, the terminal immediately creates output which basically reiterates the same assignment.  This is great initially for understanding, but when we are trying to build a large code, this output becomes a big distraction.  Luckily we can suppress the output by using a semcolon.  For example
y = 3;
% creates a variable y and sets it equal to 3, but prevents keeps the usual printed expression from happening after

% Usually it makes sense for variable names to be more meaningful than single
% letters.  For example, if the radius of a certain circle is 3, we could use
radius = 3
% This defines a variable called "radius" and sets it equal to 3.  We can use
% this as a normal variable.  For example, to create a new variable called area
% which is the area of the circle, we could type
area = pi*radius^2
% Notice how using meaningful variable names makes the code understandable!
% NOTE: there are some rules for what variables are called:
%   -- no spaces
%   -- can't start with a number
%   -- avoid special characters
%   -- case sensitive

% At this point we have defined several variables.  To see what is defined we
% can use the command "who" to display all the variables we have defined
who

% We can also delete a variable if we are done with it by using the command
% "clear".  For example, running the commmand
clear area
% makes it so that the variable area is no longer defined
% we can also clear all of the variables we have defined by running
clear all



