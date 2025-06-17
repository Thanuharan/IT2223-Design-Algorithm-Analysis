
A=[64,25,12,22,11];
n=length(A);
%first=A(1);

for i=1:n-1
    min_index =i;
    for j=i+1:n
        if A(j)>A(min_index) 
            min_index=j;
            
        else
            
        end
    end

end

%fprintf(" %d\n",A(1));