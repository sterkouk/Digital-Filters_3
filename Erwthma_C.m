clear all
load('music.mat')
D = 100; 
factors = 100;
% filter creation 
r = var(s) * autocorr(s, factors-1);%In order to find autocorrelation vector r
y = LevinsonDurbin(factors - 1, r);%Calling the given function from lecture 7
n = 1:size(s, 1);
s = s';
% The signal u it's obvious that represents the signal s with a slight
% delay
u(n + D) = s(n);
% filter output 
% play the song
y = filter(y, 1 , u);
sound(100 * y, fs)
