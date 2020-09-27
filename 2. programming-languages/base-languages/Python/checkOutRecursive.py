def checkout():
    total = 0
    count = 0
    moreItems = True
    while moreItems:
        price = float(input('Enter price of item (0 when done): '))
        if price < 0:
            print('Negative price provided!! This has not been included in the average')
        elif price != 0:
            count = count + 1
            total = total + price
            print('Subtotal: $', total)
        else:
            moreItems = False
    if count == 0:
        print("Can’t compute an average without data")
    else:
        average = total / count
        print('Total items:', count)
        print('Total $', total)
        print('Average price per item: $', average)


def checkoutRecursive():
    def checkout(total, count):
        price = float(input('Enter price of item (0 when done): '))
        if price < 0:
            print('Negative price provided!! This has not been included in the average')
            return checkout(total, count)
        elif price != 0: return checkout(total + price, count + 1)
        else: return (total, count)
    
    return checkout(0, 0)

def main():
    #checkout(): The iterative approach with mutation
    (total, count) = checkoutRecursive()
    average = total / count
    print('Total items:', count)
    print('Total $', total)
    print('Average price per item: $', average)

main()
