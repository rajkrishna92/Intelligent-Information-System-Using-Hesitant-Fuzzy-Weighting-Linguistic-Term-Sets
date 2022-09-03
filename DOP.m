function out=DOP(a,b)
l_a=a(2)-a(1);
l_b=b(2)-b(1);
out=max(1-max((b(2)-a(1))/(l_a+l_b),0),0);
end