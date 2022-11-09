clear all;
clc;
A=[0 0 1;-2 -5 -3; 0 1 0];
B=[0 1 0]';
C=[1 0 0];
D=[0];

s=tf('s');
 TF_P = C*inv(s*eye(3)-A)*B+D;
 TF_P=minreal(TF_P,0.1);

K=[170.8 9.4 79.1];


%full-order estimator
L=[67  6917 1403]';
A_F=[A-B*K B*K; zeros(size(A-L*C,1), size(A-B*K,2)) A-L*C];
B_F= zeros(size(A_F,1),1);
B_F(1:size(B,1))=B;
C_F =[C zeros(1,size(B*K,2)) ];
D_F=zeros(size(C_F,1),1);
t=0:.03:4;
sys_F = ss(A_F,B_F,C_F,D_F);
x0_F=[10;10;10;5;5;5];
% [Y_F,T_F,X_F]=initial(sys_F,x0_F);
% [Y_F,T_F,X_F]=impulse(sys_F);
[Y_F,T_F,X_F]=step(sys_F);
plot(X_F)

%full-order compensator transfer function

TF_F=-(K/(s*eye(3)-A+B*K+L*C))*L;
TF_F=minreal(TF_F,0.01)
% bode(TF_F)

bode(TF_P)
hold
%plant + compensator
sysclu_F=feedback(TF_P,TF_F,1);
bode(sysclu_F)



%reduced-order estimator
L=[371  43]';
Aaa=A(1,1);
Aab=A(1,2:3);
Aba=A(2:3,1);
Abb=A(2:3,2:3);
Ka=K(1);
Kb=K(2:end);
Ba=B(1);
Bb=B(2:end);

n= size(A,1);
A_R=[A-B*K+B*K*[C;zeros(n-1,n)]+B*K*[zeros(1,n-1);eye(n-1)]*L*C   B*K*[zeros(1,n-1);eye(n-1)]; 
    ((Abb-L*Aab-(Bb-L*Ba)*Kb)*L+Aba-L*Aaa-(Bb-L*Ba)*Ka)*C  Abb-L*Aab-(Bb-L*Ba)*Kb];
B_R= zeros(size(A_R,1),1);
B_R(1:size(B,1))=B;
C_R =[C zeros(1,size(B*K*[zeros(1,n-1);eye(n-1)],2)) ];
D_R=zeros(size(C_R,1),1);
t=0:.03:4;
sys_R = ss(A_R,B_R,C_R,D_R);
x0_R=[10;10;10;5;5];
[Y_R,T_R,X_R]=initial(sys_R,x0_R);
% [Y_R,T_R,X_R]=impulse(sys_R);
% [Y_R,T_R,X_R]=step(sys_R);

X_RR=X_R(:,1:3);
tmp=[];
for i=1:size(Y_R,1)
    tmp = [tmp; [L*Y_R(i,1)]'];
end
X_RR=[X_RR X_R(:,4:5)+tmp];
% plot(X_RR)

TF_R=-(Kb/(s*eye(2)-(Abb-L*Aab-(Bb-L*Ba)*Kb)))*((Abb-L*Aab-(Bb-L*Ba)*Kb)*L+Aba-L*Aaa-(Bb-L*Ba)*Ka)-Ka-Kb*L;

TF_R=minreal(TF_R,0.01)
% bode(TF_R)


%plant + compensator
sysclu_R=feedback(TF_P,TF_R,1);
bode(sysclu_R)

