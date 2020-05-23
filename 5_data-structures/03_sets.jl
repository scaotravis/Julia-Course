# Starting point for sets example for Learning Julia

# A set is a collection of elements like an array or dictionary
# but a set can only contain one of each element and the ordering
# of elements is not important

# create a new empty set
set1 = Set()
push!(set1, "a", 2, 5.0)
println(set1, "\n")

# create a set from a collection of values
set2 = Set([1, 2, 3, 4, 2, 5, 7, 1])
println(set2, "\n")

# When Julia determines a set type, you can't add different types
# ex. push!(set2, "abc") will result in an error because "abc" is a String instead of Int64

# create a set of a given type
rainbow = Set{String}()
push!(rainbow, "red", "orange", "yellow", "green", "blue", "indigo", "violet")
println(rainbow, "\n")

# many of the array operations also work with sets
# use the in operator to see if a set contains an item
println("red" in rainbow, "\n")

# however, since there's no order, something like an index causes an error
# ex. println(rainbow[1]) will result in an error

# you can calculate set intersections, differences, and unions
primaryColors = Set(["red", "yellow", "green", "blue"])
pastels = Set(["teal", "pink", "lavender", "coral"])

commonColors = intersect(rainbow, primaryColors)
println(commonColors, "\n")

allColors = union(rainbow, pastels)
println(allColors, "\n")

diffColors = setdiff(rainbow, primaryColors)
println(diffColors)