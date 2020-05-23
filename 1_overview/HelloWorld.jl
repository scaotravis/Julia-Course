# Start version of HelloWorld for Learning Julia course

# Define a function that prints out a message
# This creates a function with a single "method"
function helloWorld()
    println("Hello world!")
end

# By defining another version of the function with different
# arguments, we create another "method" - Julia will choose
# the right one based on the arguments. This is called 
# "multiple dispatch"
function helloWorld(count::Int)
    for i in 1:count
        println("Hello world ", i, "!")
    end
end

# Call the version with no arguments
helloWorld()

# Call the version that takes a number
helloWorld(3)