    def linearSearch(value, arr):
    i = 0
    upperBound = len(arr) - 1
    while i <= upperBound:
        if value == arr[i]:
            return i
        i = i + 1
    return None

def binarySearch(value, arr):
    lowerBound = 0
    length = len(arr)
    upperBound = length - 1

    while lowerBound <= upperBound:
        midpoint = (lowerBound + upperBound)/2
        if value < arr[midpoint]:
            upperBound = midpoint - 1
        elif value > arr[midpoint]:
            lowerBound = midpoint + 1
        elif value == arr[midpoint]:
            return midpoint
    return None

def binarySearchRecursive(value, arr):
    def recurse(upperBound, lowerBound):
        midpoint = (lowerBound + upperBound)/2
        if value < arr[midpoint]:
            return recurse(lowerBound, midpoint - 1)
        elif value > arr[midpoint]:
            return recurse(midpoint + 1, upperBound)
        elif value == arr[midpoint]:
            return midpoint
        return None
    return recurse(0, len(arr) - 1)
###Test
data = [1,2,3,4,5,6,7,8,9,10]
print(binarySearch(8, data))
print(binarySearchRecursive(8, data))
print(linearSearch(8, data))