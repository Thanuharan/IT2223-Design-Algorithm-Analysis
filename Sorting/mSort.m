function sortedArr = mergeSort(arr)
    if length(arr) <= 1
        sortedArr = arr;
        return;
    end

    mid = floor(length(arr)/2);
    left = mergeSort(arr(1:mid));
    right = mergeSort(arr(mid+1:end));

    sortedArr = merge(left, right);
end

function merged = merge(left, right)
    merged = [];
    i = 1; j = 1;

    while i <= length(left) && j <= length(right)
        if left(i) <= right(j)
            merged(end+1) = left(i);
            i = i + 1;
        else
            merged(end+1) = right(j);
            j = j + 1;
        end
    end

    if i <= length(left)
        merged = [merged, left(i:end)];
    end
    if j <= length(right)
        merged = [merged, right(j:end)];
    end
end

arr = [8,3,5,1,7,2];
sortedArr = mergeSort(arr);
disp(sortedArr);
