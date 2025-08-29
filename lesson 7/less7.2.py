countdown_start = int(input("Введите число для обратного отсчета: "))

# Выполняем обратный отсчет
for i in range(countdown_start, 0, -1):  # от countdown_start до 1
    print(f"{i}...")


print("Go!")