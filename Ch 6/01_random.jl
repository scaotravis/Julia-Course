# Starting random numbers example for Learning Julia
using Random

# generate a random number between 0 and 1
println(rand(), "\n")

# pick a random element from a given collection
for i in 1:3
    println(rand([1, 2, 3, 4, 5, 6])) # choosing 3 random items from the specified array
end
println()

# populate an array with random values
arr = rand(UInt8, 5) # populate an array with 5 unsigned Int8
println(arr, "\n")

# generate a random string
println(randstring("ABCD")) # default: generate a size 8 random string 
                            # selected from the specified string
println(randstring('a':'z', 6))
println()

# shuffle a list of elements
vowels = ["A", "E", "I", "O", "U"]
Random.shuffle!(vowels)
println(vowels, "\n")

# use the seed function to control the random number generator
Random.seed!(1000)
println(rand(), ", ", rand())
println("--------")
Random.seed!(1000)
println(rand(), ", ", rand())