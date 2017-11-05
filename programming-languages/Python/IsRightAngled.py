from math import sqrt

def is_rightangled(a, b, c):
    return approximatelyEqual(c, sqrt(a**2 + b**2))

def approximatelyEqual(a, b):
    return abs(a - b) < 0.001

def main():
    print(is_rightangled(3,4,5))

main()