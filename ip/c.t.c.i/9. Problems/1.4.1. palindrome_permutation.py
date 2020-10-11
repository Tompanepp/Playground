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
        generate list of palindromes possible from input
            check if permutation of input is in list

        refinement:
            since there is only one string,we can conclude that the possible palindromes generated are permutations of it.

            The core proble is to:
                find a palindrome using the characters of the string

'''
def generate_permutations(string_input):
    '''
        abc

        bac
        bca

        acb

        cab
        
        cba???

        for each character
            move it one step forward in the current permuation
                to generate the next permutation

            for the last character, rotate it to the beginning of the string
    '''
    def swap(current_permutation, source, target):
        print('swapping')
        temp = current_permutation[target]
        current_permutation[target] = current_permutation[source]
        current_permutation[source] = temp
        return current_permutation

    permutations = []
    string_length = len(string_input)
    print('string_length', string_length)
    for i in range(string_length):
        print('i', i)
        current_permutation = list(string_input)
        print('current permutation ', current_permutation)
        if i == string_length:
            current_permutation = swap(current_permutation, i, 0)
            #RUSHED ADD
            print('\tnew current permutation when last', current_permutation)
            permutations.append(''.join(current_permutation))
        else:
            print('in else')
            for j in range(i + 1, string_length): #WHY AM I doing i + 1??
                print('j', j)
                previous_j = j - 1
                print('\tcurrent permutation ', current_permutation)
                current_permutation = swap(current_permutation, previous_j, j)
                permutations.append(''.join(current_permutation))
                print('\tpermutations ', permutations)
    return permutations

print('complete permutations', generate_permutations('abc'))

def is_palindrome_permutation(string_input):

    def is_palindrome(permutation):
        #generate reversed vrersion of the permutation
        #compare reversed version characters from the END
            #with the original version characters from the BEGINNING
        string_reversed = permutation[::-1] #means start at end of string an stop and start of the string
        string_length = len(string_reversed)
        for i in range(string_length - 1):
            if string_reversed[string_length - 1] != string_input[i]: return False
        return True

    #generate permutations of string_input
        #check if at least one is a palindrome
            #if there are no palindromes for the characters of string_input
                #then string_input is not a permutation of a palindrome
    permutations = generate_permutations(string_input)
    
    for permutation in permutations:
        if(is_palindrome(permutation)): return True
    return False

