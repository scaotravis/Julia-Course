# Starting functions example for Learning Julia

# Functions are defined with the function keyword and are usually
# lowercase names, optionally with underscores if they are hard to read
function myFunc(a, b)
    println("This is a function")
    a + b # Julia automatically returns the last line of statement
          # so this last line is equivalent to return a + b
end

result1 = myFunc(10, 15)
println(result1)

# function arguments can have default values
function foo(a, b, z = 10)
    return (a + b) * z
end
println(foo(2, 3))
println(foo(2, 3, 5))

# you can also use keyword arguments - define them after a semicolon
function bar(a, b; multiplier = 10) # after ;, arguments must be called explicitly with the name
    return (a + b) * multiplier
end
println(bar(multiplier = 5, 4, 5))

# The Julia shorthand way of defining a function 
anotherFunc(x, y) = (a = x - 1 ; 2a + y) # last argument evaluated is returned
result2 = anotherFunc(3, 4)
println(result2)

# use the ... notation for variable arguments
function summit(args...)
    sum = 0

    # process each argument
    for a in args
        sum += a
    end

    return sum
end
println(summit(1, 5, 10))
println(summit(2, 4, 6, 8))
