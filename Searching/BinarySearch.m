A = [3, 6, 8, 12, 14, 17, 25, 29, 31, 36, 42, 47, 53, 55, 62];
target = 42;
low = 1;
high = length(A);
found = false;

while low <= high
    mid = floor((low + high) / 2);
    if A(mid) == target
        found = true;
        fprintf('Target %d found at index %d\n', target, mid);
        break;
    elseif A(mid) < target
        low = mid + 1;
    else
        high = mid - 1;
    end
end

if ~found
    fprintf('Target %d not found in the array.\n', target);
end
