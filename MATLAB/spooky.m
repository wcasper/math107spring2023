% this script takes a picture of some spooky woods
% and a picture of an even spookier ghost and combines
% them by putting the ghost in the woods

% read in the spooky woods
woods = imread('spooky-woods.jpg');

% read in the spooky ghost
ghost = imread('ghost.jpg');

% get the size of the ghost picture
nx = size(ghost,1);  % number of rows
ny = size(ghost,2);  % number of cols

% putting the ghost in the center of the woods
patch = woods(401:(400+nx),701:(700+ny),:);
woods(401:(400+nx),701:(700+ny),:) = ghost*0.25 + patch*0.75;

