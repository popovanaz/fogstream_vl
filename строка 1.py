Дана строка, состоящая из слов, разделенных пробелами. Определите, сколько в ней слов.

s = input('Введите строку:\n').strip()
print(s.count(' ') + 1)
