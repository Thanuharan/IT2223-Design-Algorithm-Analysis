arr=[3,5,7,9,11,13];
target=9;
n=length(arr);
found=false;
tic;%Start timing
for i=1:n
    if arr(i)==target
        found=true;
        index=i;
        break;
    end
end

if found
    fprintf('The target element is found at index: %d \n',index)
else
    disp('The target element is not found.')
end
toc;%End timing