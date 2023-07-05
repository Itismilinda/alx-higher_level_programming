#!/usr/bin/python3
"""Defines a square printing functiong"""


def print_square(size):
    """prints the square of the '#' char
    Args:
    size (int): The heightor widthe of the square
    raises:
    TypeError: if size is not an integer
    ValueError: if size is < 0"""

    if not isinstance(size, int):
        raise TypeError("size must be an integer")
    if size < 0:
        raise ValueError("size must be >= 0")
    for i in range(size):
        [print("#", end="") for j in range(size)]
        print("")
