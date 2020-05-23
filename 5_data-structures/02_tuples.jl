# Starting point for tuples example for Learning Julia

# a tuple is a sequence of values and is immutable once defined
# like an array, it can contain different types
tup1 = (1, 3.0, "five", 7, '9')
println("The third element of tup1 is ", tup1[3])
println("The second to fourth elements of tup1 is ", tup1[2:4], "\n")

# Tuples can be iterated over like arrays
for i in tup1
    println(i)
end
println()

# The "in" operator can be used to see if a tuple contains a value
println("Is 3 in tup1? ", 3 in tup1)
println("Is 4 in tup1? ", 4 in tup1)
println()

# tuples can have multiple dimensions
tup2 = ((1, 2), (3, 4), (5, 6))
println("The third element in tup2 is ", tup2[3])
println("The second element of the first element of tup2 is ", tup2[1][2], "\n")

# attempting to modify a tuple will produce an error
# ex. tup1[2] = 11 will result in an error

# Named Tuples provide a way to associate names with tuple values
namedTup = (a = 1, b = "two", c = '3')
println("The element associated with name a in namedTup is ", namedTup.a)
