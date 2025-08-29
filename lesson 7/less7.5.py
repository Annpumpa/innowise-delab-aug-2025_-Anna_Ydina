height = int(input("Введите высоту прямоугольника: "))
width = int(input("Введите ширину прямоугольника: "))

for i in range(height):
    for j in range(width):
        print('*', end='')
    print()