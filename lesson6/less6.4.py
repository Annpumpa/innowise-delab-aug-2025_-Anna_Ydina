import random
ran=random.randint(1,5)
user = int(input("Я загадала число от 1 до 5. Попробуй угадать!"))
if user < ran:
    print("Слишком маленькое число!")
elif user > ran:
    print("Слишком большое число!")
else:
    print("Поздравляю! Вы угадали число!")