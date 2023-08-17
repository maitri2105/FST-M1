numbers=tuple(input("Enter the numbers with comma seperated :").split(','))

for number in numbers:
    if((int(number)%5)==0):
        print(number)