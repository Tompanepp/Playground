def sort(arr):
    for i in range(1, len(arr)):
        position = i
        current_value = arr[i]
        while position > 0 and arr[position - 1] > current_value:
            arr[position] = arr[position - 1]
            position = position - 1
        arr[position] = current_value
    return arr

data = [5, 4, 7, 2, 3, 1]
print(sort(data)) 