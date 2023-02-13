function number = harmonic_number(n)
%USEAGE: number = harmonic_number(n)
%INPUTS: n -- the harmonic number I want
%OUTPUT: number -- the n'th harmonic number
%DETAILED DESCRIPTION: I don't know you guys write something...

number = 0;
for k=1:n
    number = number + 1/k;
end

end

