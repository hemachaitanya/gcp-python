# print n from 1-10
index = 1
while index <=10:
    if index % 2 == 0:
        print(index, "is even")
        index = index + 1
        
# other way

index = 1
while index <=10:
    if index % 2 == 0:
        print(index, "is even")
        index = index + 1
    if index >= 10:
        break
# other way

index = 1
while index <=10:
    if index % 2 == 0:
        print(index, "is even")
        index = index + 1
    else:
        continue
print("end of program")
    
