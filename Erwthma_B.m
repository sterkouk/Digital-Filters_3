clear all
close all
N=1000;
L=N;

lamda = 1;
um = zeros(N,1);
average_fm = zeros(L-1);
um = randn(N,1);
r = xcorr(um,um,N-1,'unbiased');
r = r(N:(2*N-1));
r1 = toeplitz(r);
wo = r1'*r;
b = [1];
c = [randn];

a = -wo;
k = 0;
a = [a(1:k,:); b; a(k+1:end,:)];
um = [um(1:N,:); c; um(N+1:end,:)];
am = a';
fm = am*um;
fm = fm^2;
%for i=1:N-1
%    for j=1:L-1
%        average_fm = average_fm+fm;
%    end
%    average_fm = average_fm/L;
%    end
R = [r(1) r';r r1];
f1 = am*R;
Pm = f1(1);
lamda = Pm;
