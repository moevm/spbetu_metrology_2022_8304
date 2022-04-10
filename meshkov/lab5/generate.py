import numpy as np

print('Равн, n=30')
arr = np.random.uniform(0, 20, 30)
arr.sort(axis=0)
print([round (i, 3) for i in arr ])

print('Равн, n=24')
arr = np.random.uniform(0, 20, 24)
arr.sort(axis=0)
print([round (i, 3) for i in arr ])

print('Равн, n=18')
arr = np.random.uniform(0, 20, 18)
arr.sort(axis=0)
print([round (i, 3) for i in arr ])

print('Эксп, n=30')
arr = np.random.exponential(10, 30)
arr.sort(axis=0)
print([round (i, 3) for i in arr ])

print('Эксп, n=24')
arr = np.random.exponential(10, 24)
arr.sort(axis=0)
print([round (i, 3) for i in arr ])

print('Эксп, n=18')
arr = np.random.exponential(10, 18)
arr.sort(axis=0)
print([round (i, 3) for i in arr ])

print('Рел, n=30')
arr = np.random.rayleigh(8, 30)
arr.sort(axis=0)
print([round (i, 3) for i in arr ])

print('Рел, n=24')
arr = np.random.rayleigh(8, 24)
arr.sort(axis=0)
print([round (i, 3) for i in arr ])


print('Рел, n=18')
arr = np.random.rayleigh(8, 18)
arr.sort(axis=0)
print([round (i, 3) for i in arr ])
