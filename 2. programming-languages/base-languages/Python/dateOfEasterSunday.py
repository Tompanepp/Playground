''' computes the date for Easter Sunday for any year between 1900 to 2099.'''

def isSpecialYear(year): year == 1954 or year == 1981 or year == 2049 or year == 2076

def fallOnNextMonth(days): return days > 31

def calculateMonthAndDay(days):
    if fallOnNextMonth(days): return f'April {days - 31}'
    else: return f'March {days}'

def calculateEasterSundayDay(year):
    a = year % 19
    b = year % 4
    c = year % 7
    d = (19 * a + 24) % 30
    e = (2 * b + 4 * c + 6 * d + 5) % 7
    dateofeaster = 22 + d + e
    return dateofeaster

def isYearValid(year):
    return year > 1900 and year < 2099

def calculateStartYear(year):
    if isSpecialYear(year): return year - 7
    else: return year
  
def main():
    str_year = input("Provide a year between 1900 and 2009: ")
    year  = calculateStartYear(int(str_year))
    if isYearValid(year):
        days = calculateEasterSundayDay(year)
        easterSundayDate = calculateMonthAndDay(days)
        print(f"Easter Sunday date: {easterSundayDate}")
    else: print("The provided is out of range")

main()