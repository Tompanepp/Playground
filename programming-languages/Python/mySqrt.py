#an implementation of Newton's method for finding a sqaureroot of a number
#square root => a number I can multiply by itself to get n 


def improve(guess, n):
   return (1/2) * (guess + (n/guess)) 

def isGoodEnough(guess, n):
    if (guess * guess) - n < 0.01: return True
    else: return False

def approximate(guess, n):
    if isGoodEnough(guess, n): return guess
    else: return approximate(improve(guess, n), n)

def mySqrt(n):
    return approximate(n/2, n)

def main():
    print('Square root of 4: ', mySqrt(4))
    print('Square root of 6: ', mySqrt(6))
    print('Square root of 9:', mySqrt(9))
    print('Square root of 100: ', mySqrt(100))

main()