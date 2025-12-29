import math
##print("Assalam O Alaikum Python")
##a = 23
##b = 12
##print(a + b)
##print(math.floor(7.65))
##print(math.cos(3.65))

##print("Addition", a + b)
##print("Substraction", a - b)
##print("Multiply", a * b)
##print("Division", a / b)
##print("Floor Division", a // b)
##print("Modulus", a % b)
##print("Exponential", a ** b)
##
##name = input("Enter your name: ")
##print("UserName: ", name)
##
##num = int(input("Enter number: "))
##print("Expo Num: ", num ** num)


##fruits = ["Apple", "Cherry", "Grapes"]
##print(fruits)
##fruits.append('orange')
##print(fruits)
##
##fruits.insert(2, 'Kiwi')
##print(fruits)

##fruits.remove('Apple')
##print(fruits)
##
##
##fruits.pop() #Last value will be popped out
##print(fruits)

##fruits.reverse()
##print(fruits)

##numbers = [5, 9, 7, 5, 3, 1, 5]
##numbers.sort()
##print(numbers.count(5))
##
##tup1 = (3, 5, 7, 'Talha')
##tup1[0] = 8
##print(tup1)

person = {
    "name": "FahadUddin",
    "age": 2
}

print("Name: ", person["name"])
print("Age: ", person["age"])

##for key, value in person.items():
##    print(key, '=>', value)

person.update({'city': 'Karachi', 'gender': 'Male'})
print(person.keys())
print(person.values())

for key, value in person.items():
    print(key, '=>', value)


def calculator(x, y, op):
    if op == '+':
        return x + y
    elif op == '-':
        return x - y
    elif op == '*':
        return x * y
    elif op == '/':
        return x / y
    else:
        return "Invalid operator"

print(calculator(20, 5, '*'))


f = open("abc.txt", "w")
f.write("Hello in Python programming")
f.close()


f = open("abc.txt", "r")
content = f.read()
f.close()
print(content)























































