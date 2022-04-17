from numpy import sort
from numpy.random import uniform, exponential, rayleigh


def uni(number: int, min: int = 0, max: int = 20):
    return f"Uniform random numbers [{min}, {max}] ({number}):\n\t[ {', '.join(str(round(e, 3)) for e in sort(uniform(min, max, number), 0))} ]\n"


def exp(number: int, scale: int = 10):
    return f"Exponential random numbers [{scale}] ({number}):\n\t[ {', '.join(str(round(e, 3)) for e in sort(exponential(scale, number), 0))} ]\n"


def ray(number: int, scale: int = 8):
    return f"Rayleigh random numbers [{scale}] ({number}):\n\t[ {', '.join(str(round(e, 3)) for e in sort(rayleigh(scale, number), 0))} ]\n"


if __name__ == '__main__':
    print("Uniform random arrays:\n", uni(30), uni(24), uni(18), sep='\n', end='\n\n\n')
    print("Exponential random arrays:\n", exp(30), exp(24), exp(18), sep='\n', end='\n\n\n')
    print("Rayleigh random arrays:\n", ray(30), ray(24), ray(18), sep='\n', end='')
