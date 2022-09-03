clear all;
clc
%x={[3 4],[2 3],[2 4]};
x={[2 4],[2 3],[2 4]};
%x={[3 4],[2 4],[3 6],[3 5]};
P=zeros(length(x));
for i=1:length(x)
    for j=1:length(x)
   if i~=j
     P(i,j)=pre_relation(x{i},x{j}); 
   end
    end
end
P

for i=1:length(x)
    for j=1:length(x)
   if i~=j
     P1(i,j)=max(P(i,j)-P(j,i),0); 
   end
    end
end
P1
s=1-P1;
for i=1:length(s)
   s(i,i)=nan; 
end
s
min(s)