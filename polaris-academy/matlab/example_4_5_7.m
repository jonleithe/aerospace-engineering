clear;
close all;
clc;

A=sym([3 0 -1;
    3 0 -1;
    4 0 5]);

disp('rref A:');
disp(rref(A));

ColA = colspace(A);
NulA = null(A);

disp('Col A: ');
disp(ColA);
disp('Nul A: ');
disp(NulA);