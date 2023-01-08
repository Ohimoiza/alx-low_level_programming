#!/bin/bash

# Create an empty archive file
gcc -Wall -Werror -Wextra -pendantic -c *.c
ar rcs libmy.a

# Iterate over all .c files in the current directory
for file in *.c; do
  # Compile the .c file into an object file
  gcc -c "$file"
  # Add the object file to the library
  ar rcs libmy.a "${file%.c}.o"
done
