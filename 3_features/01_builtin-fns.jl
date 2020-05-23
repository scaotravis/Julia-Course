# Starting example for built in functions in Learning Julia

# numeric functions
# round, floor, ceil, abs
x = 30.5
println(round(x, RoundUp))

y = 29.5
println(floor(y))
println(ceil(y))

z = -15
println(abs(z))

# text i/o
# print, println
print("Hello")
print(", ", "world")
println("!")

# printstyled
myStr = "This is some text"
printstyled(myStr, bold = true, color = :red)
println()

# read standard input
# readline
println("What is your name?")
name = readline()
print("My name is ", name, "\n")

# "is" functions
println(isascii("abc"))
println(isascii("αβγ"))

println(isdigit('9'))
println(isdigit('a'))

println(isspace(' '))
println(isspace('\r'))
println(isspace('\n'))
println(isspace('A'))
