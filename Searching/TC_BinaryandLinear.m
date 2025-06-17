%create array with 1000 numbers
%use tic/tac to measure time for:
%linear search
%Bianry search[after sorting]
%Compare results

arr = 1:1000;
target = 998;
n = length(arr);
found = false;

% Linear Search
tic; % Start timing
for i = 1:n
    if arr(i) == target
        found = true;
        index = i;
        break;
    end
end

if found
    fprintf('The target element is found at index: %d \n', index)
else
    disp('The target element is not found.')
end
toc; % End timing


% Binary Search
low = 1;
high = length(arr);

tic;
while low <= high
    mid = floor((low + high) / 2);
    if arr(mid) == target
        fprintf("Element %d found at index %d.\n", target, mid);
        break;
    elseif target < arr(mid)
        high = mid - 1;
    else
        low = mid + 1;
    end
end

if low > high
    fprintf("Element %d not found in the array.\n", target);
end
toc; % End timing
