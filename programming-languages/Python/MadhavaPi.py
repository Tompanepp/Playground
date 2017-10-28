import math
#approximation of pi using Madhava approxiation
#expansion using first 21 terms
#pi = squareroot(12)(1 - 1/3*3 + 1/5*3^2 - 1/7*3^3 + )

def myPi(iterations):
    def approximate(currentIteration, piApproximation, denominator, sign):
        '''made this mistake that cost me some debugging: 'nextSeriesNumber = 1/ denominator * (3 ** currentIteration)' 
        since division has a higher precedence my pi was sooooo wrong, try it and see for yoursefl '''
        nextSeriesNumber = 1/(denominator * (3 ** currentIteration))* sign
        if currentIteration == iterations: return piApproximation
        else:
            nextDenomiator = denominator + 2
            nextIteration = currentIteration + 1
            return approximate(nextIteration, piApproximation + nextSeriesNumber, nextDenomiator ,sign * -1)

    app = approximate(1, 1, 3, -1)
    return app * math.sqrt(12)

def main():
    print('myPi', myPi(21))

main()