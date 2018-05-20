clear all
close all
a = complex(randn,randn);
b = complex(randn,randn);
c = complex(randn,randn);
d = complex(randn,randn);
e = complex(randn,randn);
R = toeplitz(sym([a,b,c,d,e]));
w = randn(5,1);
A = R*w;
r1 = flipud(A);
w1 = flipud(w);
R1 = transpose(R);
r2 = R1*w1;
tf = isequal(r1,r2)
