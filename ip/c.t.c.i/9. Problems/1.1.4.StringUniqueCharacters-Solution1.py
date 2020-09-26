'''
    Assumptions:
        The string uses 128 ASCII character set
'''


def contain_all_unique_characters(s):
    ascii_number_of_characters = 128
    characters = [False] * ascii_number_of_characters

    if(len(s) > ascii_number_of_characters): return False # s cannot have more than the possible unique ascii characters and still be unique
    else:
        for i in range(0, len(s) - 1):
            ascii_number = ord(s[i])
            if(characters[ascii_number]): return False
            else: characters[ascii_number] = True
    return True



s1 = 'gofreetech' #false
print(contain_all_unique_characters(s1))

s2 = 'python' #true
print(contain_all_unique_characters(s2))

s3 = 'p' #true
print(contain_all_unique_characters(s3))

s4 = '' #true
print(contain_all_unique_characters(s4))


'''
    Performance
        N = length of string, N <= 128

        Time = O(N)
        Space = O(128) = O(1)
            128 for all runs, therefore constant 
            The space cost of the boolean array
'''