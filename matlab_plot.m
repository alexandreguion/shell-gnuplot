clear all
close all

copyfile('interface-ratios-8-10-10.-1-100-100-5.000.dat', 'tt1')
copyfile('interface-ratios-8-10-10.-1-100-100-10.000.dat', 'tt2')
copyfile('interface-ratios-8-10-10.-1-100-100-15.000.dat', 'tt3')



pp1=load('tt1');
pp2=load('tt2');
pp3=load('tt3');
pp4=load('tt4');
X1=pp1(:,2);
Y1=pp1(:,1) ;
X2=pp2(:,2);
Y2=pp2(:,1) ;
X3=pp3(:,2);
Y3=pp3(:,1) ;
X4=pp4(:,2);
Y4=pp4(:,1) ;
figure1 = figure;
axes1 = axes('Parent',figure1,'YGrid','on','XGrid','on','FontSize',30);
ylim(axes1,[0 30]);
hold(axes1,'on');
ylabel('\delta [\mum]');
xlabel('r [\mum]');
plot(X1,Y1,'DisplayName','10deg, ub=1., rhol=1, mul=100, sig=100, 5us','LineWidth',4);
plot(X2,Y2,'DisplayName','10deg, ub=1., rhol=1, mul=100, sig=100, 10us ','LineWidth',4,'LineStyle','-.');
plot(X3,Y3,'DisplayName','10deg, ub=1., rhol=1, mul=100, sig=100, 15us','LineWidth',4,'LineStyle','--');


%plot(X3,Y3,'DisplayName','70deg, ub=1., rhol=1, mul=100, sig=1','LineWidth',4,'LineStyle','--');
legend1 = legend(axes1,'show');
set(legend1,...
    'Position',[0.439521379368279 0.743724799981595 0.20233139151675 0.11624649859944],...
    'FontSize',20);
print('figure-29','-dpng')
