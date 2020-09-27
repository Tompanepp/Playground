from math import sqrt

def is_rightangled(a, b, c):
    if c > a and c > b:
        return isApproximatelyEqual(c, sqrt(sumSquaredSides(a, b)))
    elif b > a and b > c:
        return isApproximatelyEqual(b, sqrt(sumSquaredSides(a, c)))
    else:
        return isApproximatelyEqual(a, sqrt(sumSquaredSides(b, c)))

def sumSquaredSides(a, b):
    return a**2 + b**2
    
def isApproximatelyEqual(a, b):
    return abs(a - b) < 0.0001

def main():
    print(is_rightangled(3,4,5))


main()