В файле содержится текстовая строка. Определить частоту повторяемости каждой буквы в тексте и вывести ее.


with open('file.txt', 'r') as file:
    my_str = file.read()
s = [i for i in my_str.lower() if i.isalpha()]
m = set(s)
d = {key:s.count(key) for key in m}
print(d)
