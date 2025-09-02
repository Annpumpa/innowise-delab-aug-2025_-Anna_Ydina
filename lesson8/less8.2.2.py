prices = [1000, 3499, 250]
nds = 0.20

# 1) Функция для расчета цены с НДС
def add_vat(price, vat_rate):
    """Возвращает цену с учетом НДС"""
    return price + price * vat_rate

# 2) Применяем функцию ко всем элементам списка в цикле
print("Цены с НДС:")
for price in prices:
    price_with_vat = add_vat(price, nds)
    print(price_with_vat)