shopping_list = ["milk", "bread", "eggs", "butter", "apples"]

print("Список покупок:")
index = 1  # Начинаем нумерацию с 1
for item in shopping_list:
    print(f"{index}. {item}")  # Выводим номер и название продукта
    index += 1  # Увеличиваем индекс на 1 после каждого вывода