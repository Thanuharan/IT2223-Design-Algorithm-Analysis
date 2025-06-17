function sortedArr = QuickSort(arr)
    if length(arr) <= 1
        sortedArr = arr;
        return;
    end

    pivot = arr(1);
    left = arr(arr < pivot);
    equal = arr(arr == pivot);
    right = arr(arr > pivot);

    sortedArr = [QuickSort(left), equal, QuickSort(right)];
end

arr = [8, 3, 5, 1, 7, 2];
sortedArr = QuickSort(arr);
disp(sortedArr);