clear;
close all;
clc;

r1 = [1 -3 4];
r2 = [5 -7 10];
r3 = [-3 5 -7];

A = sym([r1; r2; r3]);

disp('A:');
disp(A);
rref(A)