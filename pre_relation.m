function out=pre_relation(x_i,x_j)

out=(max(0,x_i(2)-x_j(1))-max(0,x_i(1)-x_j(2)))/((x_i(2)-x_i(1))+(x_j(2)-x_j(1)));

end