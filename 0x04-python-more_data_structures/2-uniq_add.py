#!/usr/bin/python3
def uniq_add(my_list=[]):
    unique_integers = set(my_list)  # Convert list to a set to remove duplicates
    return sum(unique_integers)    # Calculate the sum of unique integers
