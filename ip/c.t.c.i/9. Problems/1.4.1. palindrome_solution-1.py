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

    question: can the input string be rewritten
                so it's a palindrom(i.e. reads the same forwards and backwards)?
    algo flow:
        generate permutations of the string
            check if the any permutation is a palindrome

'''

def is_palindrome_permutation(string_input):
    return

print(is_palindrome_permutation('Tact Coa')) #false
print(is_palindrome_permutation('act TCoa')) #false
print(is_palindrome_permutation('A but tuba')) #true
print(is_palindrome_permutation('ut tu Ab ba')) #true
print(is_palindrome_permutation('u')) #true
print(is_palindrome_permutation('')) #true
print(is_palindrome_permutation('peter')) #false



'''
    Performance
        N = length string

        Time = O(N! + N) => O(N!)
            N factorial to generate all permutations of string 
            N to reverse string
            N to determine if a string is a palindrom 
'''
