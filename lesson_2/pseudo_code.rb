START

# Given a collection of integers called "numbers"

SET iterator = 1
SET saved_number = value within numbers collection at space 1

WHILE iterator < length of numbers
  SET current_number = value within numbers collection at space "iterator"
  IF saved_number >= current_number
    go to the next iteration
  ELSE
    saved_number = current_number

  iterator = iterator + 1

PRINT saved_number

END

# a method that returns the sum of two integers

START 

GET number1 from user
GET number2 from user

SET result = number1 + number2

PRINT result

END

# a method that takes an array of strings, and returns a string that is all those strings concatenated together

START

GET array of strings
SET iterator = 1
SET string_result = nil

WHILE iterator < length of array 
  SET string_result = string_result + ' ' + value within array of strings collection at space "iterator"

PRINT string_result

END

# a method that takes an array of integers, and returns a new array with every other element

START

GET array of integers
SET iterator = 1
SET new array = nil

WHILE iterator < length of array of integers
  SET new array = value within numbers collection at space "iterator"

END