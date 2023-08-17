list1 = [10,21,27,32,19,35]
list2 = [5,2,8,9,10,12,17,20]

list3 = []

for element1 in list1:
    if((element1 % 2) != 0):
        list3.append(element1)
for element2 in list2:
    if((element2 % 2) == 0):
        list3.append(element2)
print(list3)