clear;
close all;
clc;

A=sym([1 -4 8 1; ...
    0 2 -1 3; ...
    0 0 0 5]);

disp('A:');
disp(A);

t = 13;

x1 = [1; 1; 0; 1] + t*[-6; 1/2; 1; 0];
disp('x1:');
disp(x1);

Ax1 = A*x1;

disp('Ax1:');
disp(Ax1);
