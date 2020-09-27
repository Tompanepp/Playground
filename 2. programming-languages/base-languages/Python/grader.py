def getGrade(grade):
    if grade >= 90: return 'A'
    elif grade >= 80: return 'B'
    elif grade >= 70: return 'C'
    elif grade >= 60: return 'D'
    else: return('F')

print(getGrade(100))
print(getGrade(90))
print(getGrade(82))
print(getGrade(78))
print(getGrade(60))