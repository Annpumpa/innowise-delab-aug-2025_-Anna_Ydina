words = ["hello", "world", "python", "code"]

# 1. Создать список длин слов, используя списковое включение
lengths = [len(word) for word in words]
print("Длины слов:", lengths)

# 2. Создать список слов длиннее 4 символов
long_words = [word for word in words if len(word) > 4]
print("Слова длиннее 4 символов:", long_words)

# 3. Создать словарь: {слово: длина} для всех слов
word_dict = {word: len(word) for word in words}
print("Словарь {слово: длина}:", word_dict)