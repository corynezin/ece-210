%% Preprocessing
addpath(genpath(pwd))
%% Problem 1
clear
fid = fopen('readings.txt');
res = textscan(fid,'%d %d %d %d %d %d %*s %f','Headerlines',1);
dates = datetime(res{1:6});
readings = res{7};
fclose(fid);
%% Problem 2
clear
load viewdata.mat
viewPct = viewdata(:,3)./viewdata(:,2)./viewdata(:,1);
viewPctShort = viewPct(viewdata(:,1) < 1.5);
viewPctMedium = viewPct(viewdata(:,1) > 1.5 & viewdata(:,1) <= 2.25);
viewPctLong = viewPct(viewdata(:,1) > 2.25);

shortPct = mean(viewPctShort);
medPct = mean(viewPctMedium);
longPct = mean(viewPctLong);
%% Problem 3
load TData.mat
xq = 0:1:675;
yq = 0:1:350;
[Xq,Yq] = meshgrid(xq,yq);
G = griddata(x,y,T,Xq,Yq,'v4');
[C,h] = contour(Xq,Yq,G,-5:1:5);
hold on
plot(x,y,'o')
clabel(C,h);
hold off
%% Problem 4
clear
f = @(x)x.^2 - sin(x);
[xmin,ymin] = fminsearch(f,0.5);
figure;
x= 0:0.01:2;
plot(x,f(x));
hold on;
plot(xmin,ymin,'r.','MarkerSize',20);
legend('x^2-sin(x)','(x_{min},y_{min})','Location','northwest');
hold off
%% Problem 5
clear
viewImage(1)
%%
viewImage(1,2)
%%
viewImage(1,'hello',1)
%%
viewImage(1,'zoom','world')
%%
viewImage(1,'zoom',2,'rotate',pi)
%% Problem 6
p = sum(randi(6,6,1e6));
histogram(p)
%% Problem 7
clear
LoadData
xlim([0, 4])
p.Color = 'blue';
set(ax,{'ycolor'},{'blue';'black'});
ax(2).YLim = [-0.5,0.5];
ax(1).YLim = [-5,5];
v.LineStyle = '--';
v.Color = 'black';
ylabel(ax(1),'Position (cm)')
ylabel(ax(2),'Velocity (m/s)')
xlabel('Time (s)')
title('Impact Data')
legend('Position','Velocity','Location','north')