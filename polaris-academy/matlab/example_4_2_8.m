clear
close all
clc

%syms a b c d e f g h i;

r1 = [2 4 -2 1];
r2 = [-2 -5 7 3];
r3 = [3 7 -8 6];

a1 = [2; -2; 3];
a2 = [4; -5; 7];
a3 = [-2; 7; -8];
a4 = [1; 3; 6];
u = [3; -2; -1; 0];
v = [3; -1; 3];

A = [a1 a2 a3 a4];

disp('A:');
disp(A);

disp('u:');
disp(u);
disp('v:');
disp(v);

ref_Av = ref([A v]);
rref_Av = sym(rref([A v]));

disp('ref_A_v:');
disp(ref_Av);

disp('rref_A_v:');
disp(rref_Av);