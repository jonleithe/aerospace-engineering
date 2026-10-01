clear;
close all;
clc;

syms x1 x2;

A=sym([3 1; ...
    5 7; ...
    1 3]);

disp('A:');
disp(A);

x = sym([x1; x2]);
disp('x:');
disp(x);