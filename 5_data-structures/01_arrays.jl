# Starting point for Arrays example file for Learning Julia

# create an array using [] syntax
arr1 = [1, 2, 3, 4, 5]
println(arr1)
println("Type of arr1 is ", typeof(arr1))
println("Size of arr1 is ", length(arr1))

# access an array element - array indexes are 1-based
println("Element at position 2 of this array is ", arr1[2])
println()

# arrays can hold different types of values
arr2 = ["one", 2, 3.0, -4]
println(arr2)
println("Type of arr2 is ", typeof(arr2))
println("Size of arr2 is ", length(arr2))
println()

# declare an array with a particular type
arr3 = Float64[]
push!(arr3, 1.0, 2.0, 3.0) # the ! symbol indicates that we are modifying a defined variable
println(arr3)
println("Type of arr3 is ", typeof(arr3))
println("Size of arr3 is ", length(arr3))
println()

# populate an array - fill wth default values
arr4 = zeros(4)
println(arr4)
println()

arr5 = ones(4)
println(arr5)
println()

arr6 = fill(5, 7) # fill 7 instances of 5
println(arr6)
println()

# Array sorting using the sort function
arr7 = sort(arr1, rev = true)
println("arr1 reverse sorted is ", arr7)
println()

# sort! modifies the original array in place
sort!(arr7) # again, ! modify in place
println("arr1 reverse reverse sorted is ", arr7)
println()

# Convert to string with a delimiter
strVal = join(arr1, "-")
println(strVal)
