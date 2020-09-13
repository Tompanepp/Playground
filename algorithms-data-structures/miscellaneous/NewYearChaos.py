def minimumBribes(q):
    length = len(q)
    swaps = 0
    MAX_BRIBES = 2
    swapped = False
    for i in range(length):
        for j in range(0, length - i - 1):
            if q[j] - (j + 1) > MAX_BRIBES:
                #print("q[j] ", q[j])
                #print("j + 1) ", j + 1)
                swaps = None
                return swaps 
            adjacent = j + 1
            if q[j] > q[adjacent]:
                temp = q[j]
                q[j] = q[adjacent]
                q[adjacent] = temp
                swaps += 1
                swapped = True
        if swapped:
            swapped = False
        else: return swaps          
    #return swaps

q = [1,2,5,3,7,8,6,4]
bribes = minimumBribes(q)
if bribes is None: print "Too chaotic"
else : print bribes