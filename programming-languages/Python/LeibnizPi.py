#approximation of pi using Leibniz approxiation
#an infinite series expansion
#pi/4 = 1 - 1/3 + 1/5 - 1/7 + 1/9 .....

def myPi(iterations):
    def approximate(currentIteration, piApproximation, denominator, sign):
        nextSeriesNumber = 1/denominator * sign
        if currentIteration == iterations: return piApproximation
        else:
            nextDenomiator = denominator + 2
            nextIteration = currentIteration + 1
            return approximate(nextIteration, piApproximation + nextSeriesNumber, nextDenomiator, sign * -1)


    return approximate(1, 1, 3, -1) * 4

def main():
    print('myPi', myPi(500))

main()