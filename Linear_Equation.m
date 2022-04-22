%%
%线性方程式

%矩阵形式

%高斯消去法
A=[1 2 1;2 6 1;1 1 4];
b=[2;7;3];
R=rref([A b]);


%LU Factorization

% Ax=b,   化为三角矩阵A=L'U     LA = U ->  Lm...*Lm-1*Lm-2*...L1A = U
% Ax=b -> L'Ux=b
% 令Ux=y

%L'y = b求得y
%Ux = y求得x

A=[1 1 1;2 3 5;4 6 8];
[L,U,P] = lu(A);
inv(L);
U;

%矩阵左除
A=[1 2 1;2 6 1;1 1 4];
b=[2;7;3];
x=A\b;%mldivide()


%逆矩阵法
% AA' = A'A = I;
% x = A'b
% A' = [a b;c d]' = adj(A)/det(A) = [d -b;-c a]/det(A)
A = [1 2 1;2 6 1;1 1 4];
b = [2;7;3];
x = inv(A)*b;

%无限多解或无解时A的inverse不存在 det(A) = 0
A = [1 2 3 4;2 4 6 8;...
    9 8 7 6;1 3 2 8];
inv(A);
det(A);
%Singular
%det(A) -> 0

%用函数检查矩阵状况
cond()
rank()
A = [1 2 3;2 4.0001 6;9 8 7]; cond(A)
B = [1 2 3;2 5 6;9 8 7]; cond(B)

%线性系统
%x,y与线性数值的关系
% [2 -12;1 -5][2 4] = [x y];
% Ab = y       已知b求y如何受A(system matrix)影响

%放大与缩小
A=[2 -12;1 -5];
[v,d] = eig(A);


%解微分系统
A = [0 -6 1;6 2 -16;-5 20 -10];
x0 = [1 1 1]';X = [];
for t = 0:.01:1
    X = [X expm(t*A)*x0];
end
plot3(X(1,:),X(2,:),X(3,:),'-o');
xlabel('x_1'); ylabel('x_2');
zlabel('x_3'); grid on;
axis tight square;








