function area = gaussian_area_solution(a,b,n)
%USEAGE: area = gaussian_area_solution(a,b,n)
%INPUTS: a -- start of the interval
%        b -- end of the interval
%        n -- number of rectangles
%OUTPUT: area -- approximate area under exp(-x^2) on the interval [a,b]
%DETAILED DESCRIPTION:
%  This uses a right Riemann sum to approximate the area under the curve y = exp(-x^2) on a specified interval [a,b]

  % calculate the width of each rectangle
  dx = (b-a)/n;

  % add up the areas of all the rectangles
  area = 0;
  for k = 1:n
    % calculate the right endpoint of the k'th rectangle
    x = a + dx*k;
    % calculate the area of the k'th rectangle
    kth_area = dx*exp(-x*x);
    % add the k'th area to the total area 
    area = area + kth_area;
  end

end


