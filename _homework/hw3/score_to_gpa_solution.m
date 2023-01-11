function gpa = score_to_gpa_solution(score)
%USEAGE: gpa = score_to_gpa_solution(score)
%INPUTS: score -- the percentage score
%OUTPUT: gpa -- the corresponding gpa
%DETAILED DESCRIPTION:
%  This function takes in the percentage score you recieved
%  in a class and returns the corresponding letter grade.
    if score <= 59 
        gpa = 0;
    elseif score <= 69
        gpa = 1;
    elseif score <= 79
        gpa = 2;
    elseif score <= 89
        gpa = 3;
    else
        gpa = 4;
end


