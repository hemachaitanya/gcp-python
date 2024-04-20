is_prime = True
Number = 7
index = 2
while index < Number:
    if Number % index == 0:
        is_prime = False
        break
    index = index + 1
    if is_prime:
        print(Number, "is  prime")
        
        