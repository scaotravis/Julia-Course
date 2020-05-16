# Declaring variables and using data types in Julia

# 5 basic types of data:
# Integers, Floating point numbers, booleans, strings, and characters

# Variable names typically are lowercase. Use underscores if the name
# is too long to be easily read.
first = 1
second = 2.0
stringVar = "This is a string"
initial = 'J'
boolVal = true

println(first)
println(second)
println(stringVar)
println(initial)
println(boolVal)

# Variables can be redefined and change type


# Strings have to be in double quotes. This will error:
# anotherstring = 'hello world'

# Constant values are declared with const and are all uppercase
# Note: this is only useful in the global scope


# Constants of the same type *can* be reassigned, but with a warning


# Constants of different types cannot be reassigned, this is an error


# Type Annotation identifies a variable as a particular type

