from math import sqrt

def is_rightangled(a, b, c):
    if c > a and c > b:
        return isApproximatelyEqual(c, sqaureRootOfSumOfSides(a, b))
    elif b > a and b > c:
        return isApproximatelyEqual(b, sqaureRootOfSumOfSides(a, c))
    else:
        return isApproximatelyEqual(a, sqaureRootOfSumOfSides(b, c))

def sqaureRootOfSumOfSides(a, b):
    return sqrt(a**2 + b**2)
    
def isApproximatelyEqual(a, b):
    return abs(a - b) < 0.0001

def main():
    print(is_rightangled(3,4,5))

main()