# Number = 335
Number = int(input("enter the number: "))
result = 0
while True:
    result = result + (Number%10)
    Number = Number//10
    if result < 10 and Number == 0:
        break
    if Number == 0:
        Number = result
        result = 0
print(result)