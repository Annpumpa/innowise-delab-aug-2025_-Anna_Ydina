scores = [75, 88, -10, 95, 100, -25, 89]
total_score = 0

for score in scores:
    if score < 0:
        continue
    if score == 0:
        break
    total_score += score
    print(f"Добавлен балл: {score}")

else:
    print("Все данные были обработаны корректно.")

print(f"\nИтоговая сумма баллов: {total_score}")