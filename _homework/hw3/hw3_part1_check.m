%%
% Program to check the part 1 of homework 3
%%

scores_to_check = [55, 60, 65, 70, 79, 80, 100];
gpa_values = [0, 1, 1, 2, 2, 3, 4];
nscores = length(scores_to_check);
for k = 1:nscores
  score = scores_to_check(k);
  true_gpa = gpa_values(k);
  test_gpa = score_to_gpa(score);
  if(true_gpa == test_gpa)
    disp(['Function passed test for score ',num2str(score)])
  else
    disp(['Function FAILED test for score ',num2str(score)])
    disp(['  got ',num2str(test_gpa), ' but expected ', num2str(true_gpa)])
  end
end 
