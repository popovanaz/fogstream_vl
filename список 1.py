Дан список чисел. Выведите все элементы списка, которые больше предыдущего элемента.

numbers = [int(i) for i in input().split()]
for i in range(len(numbers)-1):
    if numbers[i] < numbers[i+1]:
        print(numbers[i+1])
