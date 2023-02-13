function total = sum_digits(n)

ndigits = floor(log10(n))+1;

total = 0;
for k = 1:ndigits
   d = mod((n-mod(n,10^(k-1)))/(10^(k-1)),10);
   total = total + d;
end

end

