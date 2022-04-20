%%
%plot
%plot(cos(0:pi/20:2*pi));
%默认清空再绘下一个图

%%
%hold on/off
hold on
plot(cos(0:pi/20:2*pi),'or--');
plot(sin(0:pi/20:2*pi),'xg:');
hold off

%%
%图例
%legend() 标出图标
%legend('sinx','cosx');


%%
%标题和坐标轴
%title()和label()
%xlable() ylable() zlable()

%%
%text()和annotation()
%加入一些标识符 文本内容

%%
%figure adjustment
%调整单位坐标间距 图像大小 字的大小 线的粗细

%改变某个figure

%1.获取辨识码

%h = plot(x,y);
%利用function gca() - figure    gcf() - axes


%2.取出和改变properties

%get(h) line的信息
%get(gca) axis的信息

%set(gca,'XLIim',[0,2*pi]);
%set(gca,'YLim',[-1.2,1.2]);

%set(h,'LineStyle','-.','Linewidth',7.0,'Color','g');


%%
%改变点的形状大小颜色等信息


%%
%多个图的时候

% figure,plot(x,y1);
% figure,plot(x,y2);

%用gca和gcf时呼叫的是当前最新的figure2
%只能操作当前的图像

%figure的位置和大小

%figure('Position',[left,bottom,width,width,height]);




%多个图放在同一个图中
%subplot(m,n,1);
%m - num of row
%n - nim of col
%1 - 对应的图号figure1 figure2 ...


%将图片存为文件
%saveas(gcf,'<filenmae>','<formattype>');
%print - 高解析度

