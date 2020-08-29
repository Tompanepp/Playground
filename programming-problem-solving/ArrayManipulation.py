#!/bin/python3

import math
import os
import random
import re
import sys

'''
1 indexed array
    values = 0

list of operations
    for each element in array
        between some index range (inclusive)
            add a GIVEN value

    return maximum value in array
'''

'''
    array = [n]

    queries = [
                x,y,z
                x,y,z
              ]
'''

'''
 for query in queries
    for x in range(query[0], query[1])
        array[x] += query[2]

 find max value in array

 time complexity
    Q = number of queries
    QL = range length per query 
    N = number of elements in array

    O(2N + (Q * QL)) : QL <= N
    QL = Can I reduce this??
'''
def arrayManipulation(n, queries):
    array = [0 for _ in range(n)] #Seems cheap
    print("Starting summation in function")
    #This here take A LOT OF TIME

    #Precomputer the end state
        # maybe per query
        # or for all queries
    for query in queries:
        for x in range(query[0], query[1] + 1):
            zeroIndex = x - 1
            array[zeroIndex] += query[2]
        
    print("Getting Max value")
    return max(array)

'''print(arrayManipulation(5, [
                        [1,2,100],
                        [2,5,100],
                        [3,4,100]
                     ]))'''
                     
testData = open("test8.data", "r")
n = 10000000
m = 100000
print("Gathering queries")
queries = []
for _ in range(m):
    queries.append(list(map(int, testData.readline().rstrip().split())))
print("Summing")
result = arrayManipulation(n, queries)
print(result)
print("Done")





'''
    Failed Optmisation: Attempt to get rid of array initiliastion cost
        def arrayManipulation(n, queries):
            array = []
            for query in queries:
                for x in range(query[0], query[1] + 1):
                    zeroIndex = x - 1
                    summand = query[2]
                    if len(array) >= zeroIndex: array.insert(zeroIndex, summand)
                    else: array[zeroIndex] += summand
                #print(array)
            return max(array)
'''