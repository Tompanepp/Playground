'''
  1       1
  2       3
  3       6
  4       10
  5       15
'''


'''prints first n triangular numbers
   triangular number: counts objects
                      arranged in an equilateral triangle

  The `n`th triangular number
      is the number of dots
      composing a triangle
        with n dots on a side

    AND
      is equal
        the sum n natural numbers 1 to n
'''

'''
  triangular number(n) is a triangular number when
    n objects
    can be arranged
    to form an equilateral triangle

'''

def print_triangular_numbers(n):
  for i in range(1, 6):
    print((i * (i + 1)) // 2)
    #compute next triangular number


print_triangular_numbers(5)