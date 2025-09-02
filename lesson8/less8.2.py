email = " USER@DOMAIN.COM "

# 1. Очистить и отформатировать до вида: "user@domain.com"
cleaned_email = email.strip().lower()
print("Очищенный email:", cleaned_email)

# 2. Разделить на имя пользователя и домен
username, domain = cleaned_email.split('@')
print("Имя пользователя:", username)
print("Домен:", domain)

# 3. Используя f-строку, создать: "Username: user, Domain: domain.com"
result = f"Username: {username}, Domain: {domain}"
print(result)