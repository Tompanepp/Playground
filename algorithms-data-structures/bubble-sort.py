def sort(arr):
    sorted = False
    unsorted_until_index = len(arr) - 1
    while not sorted:
        sorted = True
        for i in range(unsorted_until_index):
            if arr[i] > arr[i+1]:
                arr[i], arr[i+1] = arr[i+1], arr[i]
                sorted = False
    unsorted_until_index = unsorted_until_index - 1
    return arr

data = [8,1,2,7,4,3,5]
print(sort(data)) 
#print(bubble_sort(data))  



'''
    data = 5,4,3,2,1

    Comparisons
        5 -> 4,3,2,1
        4 -> 3,2,1
        3 -> 3,2
        2 -> 1
        1 -> Nothing

        N = 5
        Comparisons = 10
        2N comparisons
        Formula: (N - 1) + (N - 2) + (N - 3) ... + 1
        4 + 3 + 2 + 1 + 1

    Swaps
        4
        3
        2
        1
        0

      Swaps = 9
      Formula: (N - 1) + (N - 2) + (N - 3)
'''