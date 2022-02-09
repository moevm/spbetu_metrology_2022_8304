from tabulate import tabulate
from operator import mul
from lab5_dicts import lab5_input
from lab5_dicts import lab5_k
from math import trunc
from utils import bcolors

distr_names_RU = {
    "uni": "РАВНОМЕРНОЕ РАСПРЕДЕЛЕНИЕ",
    "exp": "ЭКСПОНЕНЦИАЛЬНОЕ РАСПРЕДЕЛЕНИЕ",
    "rel": "РЕЛЕЕВСКОЕ РАСПРЕДЕЛЕНИЕ"
}

def sumiX(X):
    return sum(list(map(mul, X, list(range(1, len(X) + 1)))))

def f(m, N):
    return sum(map(lambda i: 1 / (m - i), range(1, N + 1)))

def g(m, N, A):
    return N / (m - A)

def solveA(X):
    A = sumiX(X) / sum(X)
    return A

def solveB(N, A):
    m_idx = 0
    m_list, f_list, g_list , abs_list = [], [], [], []
    #m_found = False
    while True:
        _m = N + m_idx + 1
        _f, _g = f(_m, N), g(_m, N, A)
        m_list.append(_m)
        f_list.append(_f)
        g_list.append(_g)
        abs_list.append(abs(_f - _g))
        if (len(abs_list) >= 2 and abs_list[m_idx - 1] < abs_list[m_idx]):
            break
        m_idx += 1
    print(tabulate([
       ["m"] + m_list,
       ["f"] + f_list,
       ["g"] + g_list,
       ["|f - g|"] + abs_list
    ]))
    m = N + m_idx
    B = m - 1
    print("m =", m, " (|f - g| =", abs_list[m_idx], " idx =", m_idx, ") =>")
    print("B =", B)
    return B

def solveK(X, B):
    K = len(X) / ((B + 1) * sum(X) - sumiX(X))
    print("K =", K)
    return K

def check_convergence(X):
    N = len(X)
    A = solveA(X)
    if A <= (N + 1) / 2:
        print("Не сходится ( A =", A, "<=", ((N + 1) / 2), ")")
        exit(-1)
    else:
        print("B существует ( A =", A, ">", ((N + 1) / 2), ")")
        return A

def print_input(X):
    N = len(X)
    print("== N = " + str(N) + " ========================ИСХОДНЫЕ ДАННЫЕ==================================")
    i_list = list(range(1, N + 1))
    rows = N // 10
    if N % 10 != 0:
        rows += 1
    table = []
    for row in range(0, rows):
        table += [ ["i"] + i_list[row * 10:(row + 1) * 10], ["X_i"] + X[row * 10:(row + 1) * 10] ]
    print(tabulate(table))

def solve_jelinski_moranda(X, max_days_over):
    N = len(X)
    print_input(X)
    print("======================================РЕШЕНИЕ======================================")
    B = solveB(N, check_convergence(X))
    K = solveK(X, B)

    print("===================================================================================")
    print("Таблица со средним временем до нахождения последней ошибки:")
    X_ave = list(map(lambda n: 1 / (K * (B - n)), range(N, B)))
    i_list = list(range(N + 1, B + 1))
    if max_days_over > 0:
        X_ave = X_ave[:max_days_over]
        i_list = i_list[:max_days_over]
    print(tabulate([
            i_list,
            ["X_ave"] + X_ave
        ], headers="firstrow"))
    print("===================================================================================")
    X_overall = sum(X) + sum(X_ave)
    print("До нахождения последней ошибки осталось:", sum(X_ave))
    print("Полное время:", X_overall)
    return trunc(X_overall)

for student in lab5_input.keys():
    print(bcolors.HEADER + "\n[][][][][][][][][][][][][][][][][]" + "[]" * (len(student) // 2 + 2) + "[][][][][][][][][][][][][][][][][]" + bcolors.ENDC)
    print(bcolors.HEADER + "[][][][][][][][][][][][][][][][][]", student, "[][][][][][][][][][][][][][][][][]" + bcolors.ENDC)
    print(bcolors.HEADER + "[][][][][][][][][][][][][][][][][]" + "[]" * (len(student) // 2 + 2) + "[][][][][][][][][][][][][][][][][]" + bcolors.ENDC)
    data = lab5_input[student]
    for distr in data:
        print("===================================================================================")
        print(bcolors.OKBLUE +  "~~~~~~~~~~~~~~~~~~~~~~~~~~~~", distr_names_RU[distr], "~~~~~~~~~~~~~~~~~~~~~~~~~~~~" + bcolors.ENDC)
        for input, output in data[distr]:
            if input != sorted(input):
                print("\t\t\t\t\t\t\t!!!!!! МАССИВ НЕ ОТСОРТИРОВАН !!!!!!")

            solution = solve_jelinski_moranda(input, lab5_k)
            diff = abs(output - solution)
            percent = max(diff / output * 100, diff / solution * 100)
            if percent <= 5:
                print(bcolors.OKGREEN + "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~" + bcolors.ENDC)
                print(bcolors.OKGREEN + "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ У С П Е Х ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~" + bcolors.ENDC)
                print(bcolors.OKGREEN + "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n" + bcolors.ENDC)
            else:
                print(bcolors.FAIL + "[Х][Х][Х][Х][Х][Х][Х][Х][Х][Х][Х][Х][Х][Х][Х][Х][Х][Х][Х][Х][Х][Х][Х][Х][Х][Х][Х][Х]" + bcolors.ENDC)
                print(bcolors.FAIL + "[Х] ПРОВАЛ [Х] " + student + " [Х] " + distr_names_RU[distr] + " [Х] N = " + str(len(input))+ " [Х]" + bcolors.ENDC)
                print(bcolors.FAIL + "[Х][Х][Х][Х][Х][Х][Х][Х][Х][Х][Х][Х][Х][Х][Х][Х][Х][Х][Х][Х][Х][Х][Х][Х][Х][Х][Х][Х]\n\n\n" + bcolors.ENDC)



