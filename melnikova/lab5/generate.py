import numpy as np
print('uni-30')

arr = np.random.uniform(0, 20, 30)
arr.sort(axis=0)
for e in arr:
    print(f"\t{round (e, 3)}, ")

print('uni-24')

arr = np.random.uniform(0, 20, 24)
arr.sort(axis=0)
for e in arr:
    print(f"\t{round (e, 3)}, ")

print('uni-18')

arr = np.random.uniform(0, 20, 18)
arr.sort(axis=0)
for e in arr:
    print(f"\t{round (e, 3)}, ")

print( 'exp-30 (10)' )

arr = np.random.exponential(10, 30)
arr.sort(axis=0)
for e in arr:
    print(f"\t{round (e, 3)}, ")

print( 'exp-24 (10)' )

arr = np.random.exponential(10, 24)
arr.sort(axis=0)
for e in arr:
    print(f"\t{round (e, 3)}, ")

print( 'exp-18 (10)' )

arr = np.random.exponential(10, 18)
arr.sort(axis=0)
for e in arr:
    print(f"\t{round (e, 3)}, ")


print( 'rel-30 (8)' )

arr = np.random.rayleigh(8, 30)
arr.sort(axis=0)
for e in arr:
    print(f"\t{round (e, 3)}, ")

print( 'rel-24 (8)' )

arr = np.random.rayleigh(8, 24)
arr.sort(axis=0)
for e in arr:
    print(f"\t{round (e, 3)}, ")

print( 'rel-18 (8)' )

arr = np.random.rayleigh(8, 18)
arr.sort(axis=0)
for e in arr:
    print(f"\t{round (e, 3)}, ")



