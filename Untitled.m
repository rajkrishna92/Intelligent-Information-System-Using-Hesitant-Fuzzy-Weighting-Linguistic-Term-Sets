 syms x;
for n=1:6
f(x)=x/(x^2+(n)^2);
f(0)
f(-.999)
f(.001)
fplot(f,[-30,30]);
hold on
end




