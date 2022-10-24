clear all;
clc;
% A=[-5 -3 -2; 1 0 0; 0 1 0];
% B=[1 0 0]';
% C=[0 0 1];
% D=[0];
% sys = ss(A,B,C,D);
% x0=[1;0;0];
% % [Y,T,X]=initial(sys,x0);
% % [Y,T,X]=impulse(sys);
% [Y,T,X]=step(sys);
% 
% 
% K=[9.4 79.1 170.8];
% sys_cl = ss(A-B*K,B,C,D);
% 
% % [Y_cl,T_cl,X_cl]=initial(sys_cl,x0);
% % [Y_cl,T_cl,X_cl]=impulse(sys_cl);
% [Y_cl,T_cl,X_cl]=step(sys_cl);
% 
% N= inv([A B;C D])*[0 0 0 1]';
% Nu=N(end);
% Nx=N(1:3);
% sys_cl2 = ss(A-B*K,B*[Nu+K*Nx],C,D);
% [Y_cl2,T_cl2,X_cl2]=step(sys_cl2,5);


% calculate LQR
% clear all;
% clc;
% syms k1 k2 k3 p1 p2 p3 p4 p5 p6 a
% eqn = [-k1*k2 == (-5-k1)*p2+p4+(-3-k2)*p1+p3, ...
%        -k1*k3 == (-5-k1)*p3+p5+(-2-k3)*p1, ...
%        -k2*k3 == (-3-k2)*p3+p6+(-2-k3)*p2, ...
%        -k1*k1 == (-10-2*k1)*p1+2*p2, ...
%        -k2*k2 == (-6-2*k2)*p2+2*p5, ...
%        -k3*k3-1  == (-4-2*k3)*p3       ];
% S = solve(eqn,p1,p2,p3,p4,p5,p6);
% eqn1 = [diff(S.p1,k1)==0,diff(S.p1,k2)==0, diff(S.p1,k3)==0];
% S1 = solve(eqn1);
% vpa(S1.k1)
% vpa(S1.k2)
% vpa(S1.k3)

A=[0 1 0 0; 1 0 0 0; 0 0 0 1; -0.5 0 0 0];
B=[0 1 0 -1]';
C=[0 0 1 0];
D=[0];

R = 1;
rho1 = 0.01; Q1 = rho1*C'*C;
rho2 = 1;    Q2 = rho2*C'*C;
rho3 = 10;   Q3 = rho3*C'*C;
rho4 = 1000; Q4 = rho4*C'*C;
K1 = lqr(A,B,Q1,R);
K2 = lqr(A,B,Q2,R);
K3 = lqr(A,B,Q3,R);
K4 = lqr(A,B,Q4,R);

N= inv([A B;C D])*[0 0 0 0 1]';
Nu=N(end);
Nx=N(1:4);
sys_cl1 = ss(A-B*K1,B*[Nu+K1*Nx],C,D);
sys_cl2 = ss(A-B*K2,B*[Nu+K2*Nx],C,D);
sys_cl3 = ss(A-B*K3,B*[Nu+K3*Nx],C,D);
sys_cl4 = ss(A-B*K4,B*[Nu+K4*Nx],C,D);

[Y_cl1,T_cl1,X_cl1]=step(sys_cl1);
[Y_cl2,T_cl2,X_cl2]=step(sys_cl2);
[Y_cl3,T_cl3,X_cl3]=step(sys_cl3);
[Y_cl4,T_cl4,X_cl4]=step(sys_cl4);
u1=-K1*X_cl1';
u2=-K2*X_cl2';
u3=-K3*X_cl3';
u4=-K4*X_cl4';

%sys_a = ss(A,B,C,D);
%step(sys_cl1,sys_cl2,sys_cl3,sys_cl4)
step(sys_cl2)
%step(sys_a)


