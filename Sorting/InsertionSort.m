A=[64,34,25,12,22,11,90];
n=length(A);

for i=2:n
    current=A(i);
    j=i-1;
    while j>0 && A(j)>current
        A(j+1)=A(j);
        j=j-1;
    end
    A(j+1)=current;
end

fprintf('Sorted Array : ');
disp(A);