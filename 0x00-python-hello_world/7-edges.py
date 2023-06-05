#!/usr/bin/python3

word = "Holberton"
# Extract the first three letters from the word
first_three_letters = word[:3]

# Extract the last two letters from the word
last_two_letters = word[-2:]

# Extract the middle portion of the word (excluding the first and last letters)
middle_word = word[1:-1]

# Print the results
print("First 3 letters: {}".format(first_three_letters))
print("Last 2 letters: {}".format(last_two_letters))
print("Middle word: {}".format(middle_word))
