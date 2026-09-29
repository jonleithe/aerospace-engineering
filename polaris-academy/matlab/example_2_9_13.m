clear;
close all;
clc;

r1 = [1 -3 2 -4];
r2 = [-3 9 -1 5];
r3 = [2 -6 4 -3];
r4 = [-4 12 2 7];

A = sym([r1; r2; r3; r4]);

disp('A:');
disp(A);
rref(A)