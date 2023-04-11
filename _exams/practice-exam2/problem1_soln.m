function A = mightyMAT(m,n)
%USEAGE: A = mightyMAT(m,n)
%INPUTS: m, n -- dimensions of output matrix
%OUTPUT: A    -- a particular Vandermonde matrix
%DETAILED DESCRIPTION: this function returns a particular matrix A whose (j,k) entry is j^k

A = zeros(m,n);

for j = 1:m
  for k = 1:n
    A(j,k) = j^k;
  end
end


end

