num1 = int(input("Введите 1 число"))
num2 = int(input("Введите 2 число"))
x=input("Выбирите оператор (+,-,/,*)")
if x == '+':
    print(num1 + num2)
elif x == '-':
    print(num1 - num2)
elif x == '*':
    print(num1 * num2)
elif x == '/':
    print(num1 / num2)
else:
    print("Ошибка: Неверная операция!")