import sinfunction

def my_range(start, stop, step = 1):
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

def main():
    print("using my range")
    print('__name__ value:', __name__)
    for n in my_range(0,0,1):
        print(n)
    sinfunction.sin()

main()