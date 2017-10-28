import math
#approximation of pi using Madhava approxiation
#expansion using first 21 terms
#pi = squareroot(12)(1 - 1/3*3 + 1/5*3^2 - 1/7*3^3 + )

def myPi(iterations):
    def approximate(currentIteration, piApproximation, denominator):
        '''made this mistake that cost me some debugging: 'nextSeriesNumber = 1/ denominator * (3 ** currentIteration)' 
        since division has a higher precedence my pi was sooooo wrong, try it and see for yoursefl '''
        nextSeriesNumber = 1/(denominator * (3 ** currentIteration))
        if currentIteration == iterations: return piApproximation
        else:
            nextDenomiator = denominator + 2
            nextIteration = currentIteration + 1
            if currentIteration % 2 == 0: 
                return approximate(nextIteration, piApproximation + nextSeriesNumber, nextDenomiator)
            else:
                return approximate(nextIteration, piApproximation - nextSeriesNumber, nextDenomiator)

    app = approximate(1, 1, 3)
    return app * math.sqrt(12)

def main():
    print('myPi', myPi(21))

main()