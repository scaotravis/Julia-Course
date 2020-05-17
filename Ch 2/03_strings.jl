# Starting example file for working with chars and strings in Julia

# Julia has a specific character type
myChar = 'x' # use single quotation mark for character
println(Int(myChar))
println(Char(120))

# Strings are defined using double quotes or triple quotes
myStr = "This is a sample string in Julia"
myOtherStr = """
    Hello There
    This is a string
    """

# Get the length of a string
println(length(myStr))

# Access individual characters - note that they are 1-indexed
println(myStr[1]) # obtains the first character of myStr
println(myStr[end]) # obtains the last character of myStr
println(myStr[end - 3]) # obtains the fourth last character of myStr

# Slicing strings is used with the : notation
sliceMyStr = myStr[2:end - 1] # slices myStr from the second to the second to last character
println(typeof(sliceMyStr)) # sliced type is still S tring

# Iterate over characters
for c in myStr
    print(c)
end
println()

# String concatenation using *
w1 = "Hello"
w2 = "world"
println(w1 * ", " * w2 * "! ")

# String interpolation
a = 5
b = 10
println("The result of $a + $b is $(a+b)")
