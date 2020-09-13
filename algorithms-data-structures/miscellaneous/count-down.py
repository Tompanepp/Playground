def countdown(number):
    print(number)
    if number == 0: 
        print("Launch")
    else: 
        countdown(number - 1)

countdown(10)


def countdownloop(number):
    while number >= 0:
        print(number)
        number = number - 1
    print("Lauch")

countdownloop(10)