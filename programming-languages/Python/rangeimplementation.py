def my_range(start, stop, step):
    values = [stop]
    for n in my_sub_range(stop - start):
        values.append(n + step)
    return values

def my_sub_range(n):
    values = [n]
    i = 0
    while(i < n):
        values.append(i)
        i = i + 1
    return values

print("using my range")
for n in my_range(0,5,1):
    print(n)