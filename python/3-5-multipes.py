
#%timeit sum = 0
# for Number in range(1 , 100):
#     if Number % 3 == 0 or Number % 5 == 0:
#         sum = sum + Number
# print(sum)


## multiples of 3,5,6 & 9

Number = 1
sum = 0
while Number <= 10:
    if Number % 3 == 0 or Number % 5 == 0:
        sum = sum + Number
    Number = Number + 1
print(sum)
    
