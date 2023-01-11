function B = imsmooth(A)
%USEAGE: B = imsmooth(A)
%INPUTS: A -- a matrix containing grayscale image data
%OUTPUT: B -- the smoothed image
%DETAILED DESCRIPTION:
%  This function takes in a matrix A representing the grayscale image data of a
%  black and white image and returns a smoothed image B

  % get the size of the image A

  [nrows,ncols] = size(A);

  % A is read in as unsigned integers which makes it behave weird
  % To fix this, we recast it as double

  A = double(A);

  % initialize the matrix B

  B = zeros(nrows,ncols);

  % loop over the entries of B to set them to the average pixel values

  % for i = ...
  %   for j = ...
  %     B(i,j) = ...
  %   end
  % end

  % now the result needs to be recast as an unsigned integer

  B = uint8(B);

end

