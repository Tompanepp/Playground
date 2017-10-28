#approximation of pi using Leibniz approxiation
#an infinite series expansion
#pi/4 = 1 - 1/3 + 1/5 - 1/7 + 1/9 .....

def myPi(iterations):
    def approximate(currentIteration, piApproximation, denominator):
        nextSeriesNumber = denominator + 2
        if currentIteration == iterations: return piApproximation
        else:
            if currentIteration % 2 == 0: 
                return approximate(currentIteration + 1, piApproximation + 1/denominator, nextSeriesNumber)
            else:
                return approximate(currentIteration + 1, piApproximation - 1/denominator, nextSeriesNumber)

    return approximate(1, 1, 3) * 4

def main():
    print('myPi', myPi(500))

main()