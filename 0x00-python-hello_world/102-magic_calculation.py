#!/usr/bin/python3

def magic_calculation(a, b):
    result = 0
    if a == 1 and b == 2:
        result = 3
    elif a == 3:
        result = b ** 2 + 98
    else:
        result = a * b - 98
    return result
