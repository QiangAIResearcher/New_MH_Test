% generate the ecdf matrix
clear
clc
close all
N = 100;    % 100 hundred curves
[xtmp, cdftmp] = ecdf_decompo(1.0,0);
n = length(xtmp);
res = zeros(N+1, n);
res(1, :) = xtmp;
maxSD = 1.2;
minSD = 0.1;
sdval = zeros(N);
for i = 1:1:N
    sdval(i) =  minSD + (maxSD - minSD) / N *(i-1);
    [x, cdf] = ecdf_decompo(sdval(i), 0);
end
