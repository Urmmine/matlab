%% 
%MATRIX
A=[1 2 3 4;5 6 7 8;9 10 11 12];
%[]宣告矩阵
%A加圆括号()就是去A中找元素
%indexing：以row和col记：A(2,2)=6 或 以col从上到下记：A(5)=6
%A([1 3;1 3])=[1 9;1 9] 为以col记的第一和第三个元素

%A([1 3],[1 3])：逗号前后表示row和col，共有row1，col1 row1，col3 row3，col1 row3，col3 
%即一行三行一列三列相交的部分

%A(3,:)
%:即为取全部，上式意为第三行的全部

B =1:2:99;
%:为等差级数的宣告

%增广矩阵
F=[A B];

%矩阵的四则运算

%与实数
a=2;
x1=A+a;
x2=A/a;
x3=A./a;%对应位置除法得结果，与实数运算时实际与直接/相同
x4=A^a;%A*A
C=A';%转置

%与矩阵
y1=A+B;
y2=A*B;%内积
y3=A.*B;%对应位置相乘得结果
y4=A/B;
y5=A./B;%对应位置相除得结果

%some special matrix
eye(n);%对角线全为1，n为对角线元素个数
zeros(n1,n2);%n1*n2的全0矩阵
ones(n1,n2);%n1*n2的全1矩阵
diag(n1,n2,n3);%对角线矩阵，对角线为n1,n2,n3,...
linspace(0,13,6);%分成6-1份

%
max(A);%计算每一个col最大的数字
max(max(A));
sum(A);%每个col相加
mean(A);%每个col取平均

sort(A);%每个col独立运作，从小到大排
sortrows(A);%以row为单位，以每个row第一个元素从小到大排
size(A);%得row col
length(A);%长度
find(A==5);%得到以col记的该元素位置