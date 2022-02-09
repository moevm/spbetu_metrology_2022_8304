path = './asm'
file = open(path, 'r')
lines = file.readlines()
#print(lines)

# =================================================================
# Очищаем строки от директив и ненужных символов
remove_first_tabs = []
for l in lines:
    if l[0] == '\\t':
        line = l[1:]
    else:
        line = l
    line = line.replace('\t', ' ')
    line = line.replace('\n', '')
    line = line.replace(',', '')
    if line[0] != '.':
        remove_first_tabs.append(line)
#print(remove_first_tabs)
lines = remove_first_tabs
#print(lines)

# =================================================================
# Разбиваем строки на токены с подсчетом вхождений
dict = {}
for line in remove_first_tabs:
    units = line.split(' ')
    #print(units)
    for u in units:
        if u in dict:
            dict[u] += 1
        else:
            dict[u] = 1
print(dict)

# =================================================================
# Проверка вхождения токенов
checked_token = "movq"

sum = 0
for token in dict.keys():
    if str(token).__contains__(checked_token):
        sum += dict[token]
print("Количество возможных подвхождений :", sum)

if dict.__contains__(checked_token) :
    token_count   = dict[checked_token]
    print("Количество вхождений", checked_token, ":", token_count)
    print("Совпадают?", (sum == token_count))
else:
    print("Такого токена вообще-то нет /0o0\\")

