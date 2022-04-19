%%
%strcut 与 nesting strcut
A = struct('data',[3 4 7;8 0 1],'nest',...
    struct('testnum','Test 1',...
    'xdata',[4 2 8],'ydata',[7 1 6]));

%%
%cell array
B(1,1)={[1 4 3; 0 5 8; 7 2 9]};
B(1,2)={'Anne Smith'};
B(2,1)={3+7i};
B(2,2)={-pi:pi:pi};

%读取cell array
C=B(1,1);
D=B{1,1};%大括号读取内部内容
E=B{1,1}(1,1);%小括号读取矩阵内容

%%

%cat()
A=[1 2;3 4];
B=[5 6;7 8];
C=cat(1,A,B);
%1 - row
%2 - column
%3 - layer

%%
%reshape()
A={'James Bond',[1 2;3 4;5 6];pi,magic(5)};
C=reshape(A,1,4);

%%
%判断是某种type
%isinteger


%%
%save() 和load()
a=magic(4);
save mydata1.mat
save mydata2.mat -ascii
load('mydata1.mat');
load('mydata2.mat','-ascii')

%%
%高阶读取
%Excel表格的读取
Score = xlsread('04Score.xlsx');%只读数字的部分
Score = xlsread('04Score.xlsx','B2:D4');

%写入
M = mean(Score')';
xlswrite('04Score.xlsx',M,1,'E2:E4');
xlswrite('04Score.xlsx',{'Mean'},1,'E1');%写入标头，1为sheet1


%%
%低阶读取
fid = fopen('[filename]',['permission']);%'r' 'w' 'r+'

%将值写入文件
% 1.Generate x,y
% 2.open a file
% 3.write x,y into the file
% 4.close the file
x=0:pi/10:pi;
y=sin(x);
fid=fopen('sinx.txt','w');
for i=1:11
    fprint(fid,'%5.3f %8.4f\n',x(i),y(i));
end
fclose(fid);
type sinx.txt