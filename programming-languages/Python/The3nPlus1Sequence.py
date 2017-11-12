def seq3np1(n):
    iterations = 0
    while n != 1:
        print(n)
        iterations += 1
        if n % 2 == 0:
            n = n // 2
        else:
            n = n * 3 + 1
    print(n) 
    print(f'took {iterations} to converge to 1')

def main():
    str_n = input('starting value of n: ')
    n = int(str_n)

    seq3np1(n)

main()