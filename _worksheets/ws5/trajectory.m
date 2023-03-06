c  = 0.285 + 0.01*i;
z0 = 0.100 + 0.20*i;

npts = 15;
z = zeros(npts);
z(1) = z0;
for k = 2:npts
  z(k) = z(k-1)^2 + c;
end

plot(real(z),imag(z),'bo')
for k = 1:npts
  text(real(z(k))+0.005,imag(z(k))-0.005,strcat("z",int2str(k-1)))
end

xlabel("real")
ylabel("imag")
title("trajectory of point under map")
saveas(gcf,"trajectory.png")

