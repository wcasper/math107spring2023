function pixel = average_pixel(A,j,k)
%USEAGE: pixel = average_pixel(A,j,k)
%INPUTS: A -- a matrix containing grayscale image data
%        j -- the row of the desired pixel
%        k -- the col of the desired pixel
%OUTPUT: pixel -- the value of the (weighted) average of the pixel A(i,j) with
%                 it's neighbors, based on a simple Gaussian filter
%DETAILED DESCRIPTION:
%  This function takes in a matrix A representing the grayscale image data of a
%  black and white image and returns the value of the j,k'th pixel of the
%  resultant smoothed image based on a simple 3x3 Gaussian linear filter.


  % get the size of the image A

  [nrows,ncols] = size(A);

  % first check if (j,k) is a boundary pixel

  if( j == 1 || k == 1 || j == nrows || k == ncols)
    % it is a boundary pixel so pixel = A(j,k)

    pixel = A(j,k);
  else
    % it is NOT a boundary pixel so we can use our filter

    % pixel = (insert formula)
  end


end

