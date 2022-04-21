%%
%多项式的表示
f(x) = x.^3-2*x-5;
p = [1 0 -2 -5];

%%
%
a = [9,-5,3,7];%多项式系数
x = -2:0.01:5;%定义域
f = polyval(a,x);
plot(x,f,'LineWidth',2);
xlabel('x');
ylabel('f(x)');
set(gca,'FontSize',14)

%%
%polyder() 微分
p = [5 0 -2 0 1];
polyder(p);%微分
polyval(polyder(p),7)%微分后的值

%%
%polyint() 积分
%提供一个constont
p = [5 0 -2 0 1];
polyint(p,3);
polyval(polyint(p,3),7)


%%
%数值微分
%diff() 计算vector前后entries的差异
x = [1 2 5 2 1];
diff(x)

%
x = [1 2];
y = [5 7];
slope = diff(y)./diff(x);

%
x0=pi/2;
h=0.1;
x=[x0,x0+h];
y=[sin(x0) sin(x0+h)];
m = diff(y)./diff(x);

%
h=0.5;
x = 0:h:2*pi;
y = sin(x);
m = diff(y)./diff(x);
plot(x,y)


%
h = 0.1;
x = 0:h:2*pi;
y = exp(-x).*sin((x.^2)./2);
m = diff(y)./diff(x);
plot(x,y)


%%
%二次微分
m = diff(y)./diff(x);
m2 = diff(m)./diff(x(1:end-1));


%%
%数值积分
A = @(x) 4*x.^3 dx 
%Midpoint Rule 矩形法
%分成几等份利用矩形中点函数值作为矩形的高
h = 0.05;
x = 0:h:2;
midpoint = (x(1:end-1)+x(2:end))./2;
y = 4*midpoint.^3;
s = sum(h*y);

%Trapezoid Rule 梯形法
h = 0.05;
x = 0:h:2;
y = 4*x.^3;
s = h*trapz(y);


%1/3 Simpson's Rule
h = 0.05;
x = 0:h:2;
y = 4*x.^3;
s = h/3*(y(1)+2*sum(y(3:2:end-2))+...
    4*sum(y(2:2:end)+y(end)));


%%
%Function Handles(@)
%A handle is a pointer to a funcion

function [y] = xy_plot(input,x)
y = input(x);
plot(x,y,'r--');
xlabel('x');
ylabel('function(x)');
end

%调用时使用xy_plot(@sin,0:0.1:2*pi)    类似C Language中函数指针

%数值积分 integral()
y = @(x) 1./(x.^3-2*x-5);%y是一个function handle
integral(y,0,2);

%二重积分
f = @(x,y) y.*sin(x)+x.*cos(y);
integral2(f,pi,2*pi,0,pi);

%三重积分
f = @(x,y,z) y.*sin(x)+z.*cos(y);
integral3(f,0,pi,0,1,-1,1);
