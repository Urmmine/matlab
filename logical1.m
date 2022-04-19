
%%
a=3;
if rem(a,2) == 0
    disp('a is even')
else
    disp('a is odd')
end
%%
for n=1:10
    b(n)=2^n;
end
disp(b)
%%
A=[1 2 3 4;...
    5 6 7 8];

%%
%Pre-allocating 预宣告
A = zeros(2000,2000);


%%
clc
%ctrl+c  停止执行程序


%%
%function handles
f = @(x)exp(-2*x);%f是一个pointer指向后面的exp(-2*x)
x = 0:0.1:2;
plot(x, f(x));

