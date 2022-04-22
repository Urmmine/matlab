%%
%方程式求根

%%
%1.解析解

%符号表示 symbolic solve

%
syms x
x+x+x;

%
x = sym('x');
x+x+x;
(x+x+x)/4;

%solve() 求解 y = x*sin(x) - x = 0
%一元二次方程
syms x
y=x*sin(x) - x;
solve(y,x)

%二元一次方程
syms x y
eq1 = x - 2*y - 5;
eq2 = x + y - 6;
A = solve(eq1,eq2,x,y);


%含代数
syms x a b
solve(a*x^2-b,x)%x为未知

syms x a b
solve(a*x^2-b,b)%b为未知

%解微分
%y = 4x^5
syms x
y = 4*x^5;
yprime = diff(y);

syms x
f(x) = exp(x^2)/(x^3-x+3);
fprime = diff(f);

%解积分
syms x
y = x^2*exp(x);
z = int(y);
z = z-subs(z,x,0);%z(0) = 0

%2.画图求解

%3.数值解
%函数指针 Function Handles   @

%fsolve()
f2 = @(x) (1.2*x+0.3+x*sin(x));
fsolve(f2,0);

%fzero()
f = @(x) x.^2;
fzero(f,0.1);%穿过x轴才有解
fsolve(f,0.1);
 


%对于多项式Polynomials
roots([1 -3.5 2.75 2.125 -3.875 1.25])



%二分法求根
% function y = hanshu(x)
%     y = x.^6 - 2*x.^4 - 6*x.^3 - 13*x.^2 + 8*x + 12;

clearvars;
clc;
a = -2.5;b=-1.5;
c = (a+b)/2;
eps = 0.000001;
fc = hanshu(c);
while(abs(fc)>eps)
    fa = hanshu(a);
    fb = hanshu(b);
    if fa*fb > 0 
        a = c;
    else
        b = c;
    end
    c = (a+b)/2;
    fc = hanshu(c);
end
x = c;
disp(x);


%牛顿迭代法

clc
clear
syms x
h=x.^3+x.^2-1;
fplot(h);
x0=NW(h,1,100);
function result = NW(h,x,n)
f=matlabFunction(h);  %将符号函数变为匿名函数h=@（x） x.^3+x.^2-1
f1=matlabFunction(diff(h));
X(1)=x;
i=2;
while 1
    X(i)=X(i-1)-f(X(i-1))/f1(X(i-1));
    if abs(f(X(i))) <1e-6
         result=X(i);
         return;
    end
    if i>n
        result=X(i);
        return;
    end
    i=i+1;
end
end







%递归法
%n! = 1*2*3*4*...*n
%fact(n) = n*fact(n-1)

function output = fact(n)
if n==1
    output = 1;
else
    output = n * fact(n-1);
end
end


