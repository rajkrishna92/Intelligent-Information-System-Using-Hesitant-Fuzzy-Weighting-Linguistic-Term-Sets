syms a b c d
n=4
x=[0.5	0.6	0.7	0.8]
y=[1.3254	1.1532	0.9432	1.0514]
sum((x.^3).*y)
a+b*sum(x)+c*sum(x.^2)+d*sum(x.^3)
A=[n sum(x) sum(x.^2) sum(x.^3);...
    sum(x) sum(x.^2) sum(x.^3) sum(x.^4);...
    sum(x.^2) sum(x.^3) sum(x.^4) sum(x.^5);...
    sum(x.^3) sum(x.^4) sum(x.^5) sum(x.^6)]
B=[sum(y);sum(x.*y);sum((x.^2).*y);sum((x.^3).*y)]
p=linsolve(A,B)



syms x
f=@(x)-10.8406+63.8437*x-108.6900*x^2+59.3333*x^3
% fplot(f,[0.5 0.8])
% hold on 
% plot(a,b,'*')
p=fminbnd(f,0.5,0.8)
fnmin(f)
subs(f(p))

% v1 = -5:0.01:5;  % plotting range from -5 to 5
% [u v] = meshgrid(v1);  % get 2-D mesh for x and y
% cond1 = 2*u.^2+2*v.^2-u+v<0;  % check conditions for these values
% cond2 = 2*u.^2+2*v.^2-u-v>0;
% cond1 = double(cond1);  % convert to double for plotting
% cond2 = double(cond2);
% cond1(cond1 == 0) = NaN;  % set the 0s to NaN so they are not plotted
% cond2(cond2 == 0) = NaN;
% cond = cond1.*cond2;  % multiply the two condaces to keep only the common points
% surf(u,v,cond)
% view(0,200) 
% ineqplot('2*x.^2+2*y.^2-x+y<0',[-1 1], 'r');
% 
% ineqplot('2*x.^2+2*y.^2-x-y>0',[-1 1]);
