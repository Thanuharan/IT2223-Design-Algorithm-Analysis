Arr= [64, 25, 12, 22, 11];

n=length(Arr);
for i=1:n-1
        minIndex=i;
    for j=i+1:n
        if Arr(j) <  Arr(minIndex)
            minIndex = j;
        end
    end

    if minIndex~=i
        temp=Arr(i);
        Arr(i)=Arr(minIndex);
        Arr(minIndex)=temp;
    end
end

fprintf('Sorted Array : ');
disp(Arr);