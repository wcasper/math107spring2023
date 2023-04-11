function symbol = qpoch(a,q,n)
%USEAGE: symbol = qpoch(a,q,n)
%INPUTS: a, q, n -- input parameters with n an integer
%OUTPUT: symbol -- q-pochhammer symbol (a;q)_n
%DETAILED DESCRIPTION: This function calulates the q-Pochhammer symbol (a;q)_n for specified values of a, q, and n

symbol = 1;
for k=1:n-1
  symbol = symbol*(1-a*q^k);
end

end


