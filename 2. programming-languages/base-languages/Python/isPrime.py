'''
  divisible only by 1
  and itself

  Therefore if any factor is found between 1 and `n`
  `n` is not prime

'''

def isPrime(n):
  for i in range(2, n):
    if n % i == 0: return False
  return True



def main():
  for n in range(100):
    print(n, 'is a prime:', isPrime(n))


main()