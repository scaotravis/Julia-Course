# Starting sorting example for Learning Julia

arr1 = [2, 8, -3, -15, 5, -7, 9, 0, 11]

# sort the data by a simple transformation
result1 = sort(arr1, by = abs) # sorted by the absolute values (i.e. ignore the sign)
println(result1, "\n")

# check to see if an array is already sorted
arrtup = [(1, 2), (2, 1), (3, 5), (4, 0)]
println("Is arrtup sorted by 1st element: ", issorted(arrtup, by = x -> x[1]))
# the by argument specifies to look for only the first item in a tuple for sorted order
println("Is arrtup sorted by 2nd element: ", issorted(arrtup, by = x -> x[2]), "\n")

# Sorting custom types
struct MyRect
    length::Int
    width::Int
end

arr2 = [MyRect(12, 22), MyRect(10, 18), MyRect(7, 12), MyRect(9, 30)]

# declare a custom sorting function
function compareArea(rect1::MyRect, rect2::MyRect)
    area1 = rect1.length * rect1.width
    area2 = rect2.length * rect2.width
    return area1 < area2
end

sort!(arr2, lt = compareArea) # lt takes a custom less than function
println("Sorted arr2 by area: ", arr2)
