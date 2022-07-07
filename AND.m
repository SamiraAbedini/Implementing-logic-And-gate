%simulation of AND logical operator by hebbian learning algorithm
x=[1 1 -1 -1;1 -1 1 -1];
y=[1 -1 -1 -1];
w=[0 0];
b=0;
for i=1:4
for j=1:2
w(j)=w(j)+y(i)*x(j,i);
end
b=b+y(i);
end
disp('the final weight matrix is:');
disp(w);
disp('And final bias value:');
disp(b);
plot(x(1,1),x(2,1),'+g',...
'linewidth',5,...
'markersize',20,...
'markerfacecolor',[0,0,1]);
hold on;
plot(x(1,2),x(2,2),'or',...
'linewidth',5,...
'markersize',20,...
'markerfacecolor',[1,0,0]);
hold on;
plot(x(1,3),x(2,3),'or',...
'linewidth',5,...
'markersize',20,...
'markerfacecolor',[1,0,0]);
hold on;
plot(x(1,4),x(2,4),'or',...
'linewidth',5,...
'markersize',20,...
'markerfacecolor',[1,0,0]);
hold on;
m=-(w(1)/w(2));
c=-b/w(2);
x1=linspace(-2,2,1000);
x2=m*x1+c;
plot(x1,x2,'b');
axis([-2 2 -2 2]);