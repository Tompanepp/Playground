#general infrastructure form approximation of pi usign a p'plugabble' approximation
#an infinite series expansion


from inspect import signature
import math

'''note: I have no idea what the mathematics name for the 'transformer' is, 
    anybody who knows the correct terminology please update
'''
def myPi(iterations, approxiationMethod, transformer):
    def approximate(currentIteration, piApproximation, denominator, sign, method):
        nextSeriesNumber = computeNextSeriesNumber(method ,denominator, currentIteration) * sign
        if currentIteration == iterations: return piApproximation
        else:
            nextDenomiator = denominator + 2
            nextIteration = currentIteration + 1
            return approximate(nextIteration, piApproximation + nextSeriesNumber, nextDenomiator, sign * -1, method)

    def computeNextSeriesNumber(m, denominator, currentIteration):
        sig = signature(m)
        if len(sig.parameters) > 1 : return m(denominator, currentIteration)
        else: return m(denominator) 

    return approximate(1, 1, 3, -1, approxiationMethod) * transformer

#pi/4 = 1 - 1/3 + 1/5 - 1/7 + 1/9 .....
def LeibnizPiApproximation(denominator): return 1/denominator

#pi = squareroot(12)(1 - 1/3*3 + 1/5*3^2 - 1/7*3^3 + )
def MadhavaPiApproximation(denominator, currentIteration): return 1/(denominator * (3 ** currentIteration))

def main():
    print('Leibniz Pi Approximation', myPi(500, LeibnizPiApproximation, 4))
    print('Leibniz Pi Approximation', myPi(21, MadhavaPiApproximation, math.sqrt(12)))

main()