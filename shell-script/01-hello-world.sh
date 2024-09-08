#!/bin/bash

# This is a basic shell script example

# Variables
greeting="Hello, World!"
count=5

# Function definition
say_hello() {
  echo "$greeting"
}

# Conditional statement
if [ $count -gt 3 ]; then
  echo "Count is greater than 3."
else
  echo "Count is 3 or less."
fi

# Loop example
for i in $(seq 1 $count); do
  echo "Iteration $i"
done

# Call the function
say_hello

# End of script
