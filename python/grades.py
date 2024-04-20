x = int(input("enter the telugu marks: "))
y = int(input("enter the english marks: "))
z = int(input("enter the mathematical marks: "))
p = int(input("enter the scince marks: "))
q = int(input("enter the hindi marks: "))
r = int(input("enter the social marks: "))
avg = (x + y + z + p + q + r )// 6
print(avg)
if avg >= 90 and avg <= 100:
    print("a1 grade")
elif avg >= 80 and avg < 90:
    print("a2 grade")
elif avg >= 70 and avg < 80:
    print("b1 grade")
elif avg >= 60 and avg < 70:
    print("b2 grade")
elif avg >= 40 and avg < 60:
    print("c1 grade")
elif avg < 40:
    print("he is failed")

    
