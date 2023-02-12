%%
% Program to check the part 2 of homework 3
%%

values_to_check = [0, 1, 10; 1, 10, 4; -10, 10, 100];
area_values = [0.714604768190321,5.820322566494556e-05, sqrt(pi)];

nvalues = size(values_to_check);
tolerance = 1e-13;
format long
for k = 1:nvalues
  a = values_to_check(k,1);
  b = values_to_check(k,2);
  n = values_to_check(k,3);
  true_area = area_values(k);
  test_area = gaussian_area(a,b,n);
  if(abs(true_area-test_area) < tolerance)
    disp(['Function passed test for ',num2str(n), ' rectangles from ',num2str(a),' to ',num2str(b)])
  else
    disp(['Function FAILED test for ',num2str(n), ' rectangles from ',num2str(a),' to ',num2str(b)])
    disp(['  got ',num2str(test_area), ' but expected ', num2str(true_area)])
  end
end 
