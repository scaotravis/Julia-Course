# Starting point for dot operator sample for Learning Julia

# The dot operator applies an operation to a collection
arr1 = [2,4,6,8,10]
println(arr1)

result1 = arr1 .* 2 # multiply each element in the array by 2
println(result1)

# functions can also be applied to collections this way
result2 = sqrt.(arr1)
println(result2)

# custom functions can also be used this way
f(x) = 3x
result3 = f.(arr1)
println(result3)