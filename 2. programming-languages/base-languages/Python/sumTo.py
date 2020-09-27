def sumTo(n):
    return sum(n, 0)

def sumTo2(n):
    return (n * (n + 1))/2

def sum(n, acc):
    if(n == 0):
        return acc
    else: 
        return sum(n - 1, acc + n)
    
def main():
    print('sumTo recursive', sumTo(10))
    print('sumTo2 special formula', sumTo2(10))

main()