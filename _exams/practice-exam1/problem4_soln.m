function cost = tour_group_cost(n)
%USEAGE: cost = tour_group_cost(n)
%INPUTS: n -- number of people in the tour group
%OUTPUT: cost -- the cost of the tour
%DETAILED DESCRIPTION:
%  This function takes in the size of a tour group and returns the total cost of the tour.  (Not the cost per person!!)

  if n <= 4:
    cost = 8*n;
  elseif n <= 14
    cost = 6*n;
  else
    cost = 90;
  end

end

