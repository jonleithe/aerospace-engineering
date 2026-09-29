clear;
close all;
clc;

r1 = [1 1 1 1];
r2 = [2 2 -1 -1];
r3 = [3 3 -1 -1];

A = sym([r1; r2; r3]);

disp('A:');
disp(A);
rref(A)