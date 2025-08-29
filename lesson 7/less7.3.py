secret = 7
user = None

while user != secret:
    user = int(input("Угадайте число от 1 до 10: "))
    if user != secret:
        print("Неверно, попробуйте еще раз.")
    else:
        print("Поздравляю! Вы угадали число!")