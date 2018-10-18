Написать функцию is_prime, принимающую 1 аргумент — число от 0 до 1000, и возвращающую True, если оно простое, и False - иначе.


def is_prime(x):
    if x <= 0 or x > 1000:
         raise ValueError("Неправильно введено значение")
    for i in range(2, x // 2 + 1):
        if x % i == 0:
            return False
    return True
x = int(input('Введите число от 0 до 1000:\n'))
try:
    print(is_prime(x))
except ValueError as e:
    print(e)
