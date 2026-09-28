clear
close all
clc

%syms a b c d e f g h i;

r1 = [2 4 -2 1];
r2 = [-2 -5 7 3];
r3 = [3 7 -8 6];

A = sym([r1; r2 ;r3]);

disp(A);
refA = ref(A);
rrefA = rref(A);
NulA = null(A);

disp('Nul A:');
disp(NulA);