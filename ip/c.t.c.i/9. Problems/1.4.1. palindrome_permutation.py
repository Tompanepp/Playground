'''
    input = string
    objective = determine if input is
                    a permutation of
                        a palindrome

    definitions:
        permutaion:
            For two strings to be permutations of each other, they must contain the same:
                - characters 
                        characters include all possible characters in Unicode char set (whitespace etc)
                - number of characters


        palindrome:
            a word/phrase
                same
                    backwards AND forwards

    algo flow:
        check if string is a palindrome
        if it is a palindrome, then it IS a permutation of palindrome 

'''
from itertools import permutations

def is_palindrome_permutation(string_input):
    #generate permutations of string_input
        #check if at least one is a palindrome
            #if there are no palindromes for the characters of string_input
                #then string_input is not a permutation of a palindrome
    string_input = string_input.lower()
    def is_palindrome(permutation):
        #generate reversed vrersion of the permutation
        #compare reversed version characters from the END
            #with the original version characters from the BEGINNING
        permutation_reversed = permutation[::-1] #means start at end of string an stop and start of the string
        if(permutation == 'taco cat'):
            print('string reverse', permutation_reversed)
            string_length = len(permutation_reversed)
            for i in range(string_length - 1):
                print('compare chars',permutation_reversed[string_length - i - 1], string_input[i]  )
                if permutation_reversed[string_length - i - 1] != string_input[i]: return False
            return True

    for p in permutations(string_input):
        permutation = ''.join(p).lower() 
        if(permutation == 'taco cat'): print('Found taco cat')
        if(is_palindrome(permutation)): 
            print('palindromic permuation', permutation)
            return True
    return False

print(is_palindrome_permutation('Tact Coa')) #true
'''
print(is_palindrome_permutation('act TCoa')) #true
print(is_palindrome_permutation('A but tuba')) #true
print(is_palindrome_permutation('ut tu Ab ba')) #true
print(is_palindrome_permutation('u')) #true
print(is_palindrome_permutation('')) #true
print(is_palindrome_permutation('peter')) #false
'''


'''
    Performance
        N = length string

        Time = O(2N!) => O(N!)
            N factorial to generate all permutations of string 
'''
