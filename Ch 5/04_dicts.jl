# Starting point for dictionaries example for Learning Julia
# Dictionaries map unique keys to individual values

# Create a new dictionary
d1 = Dict("a" => 1, "b" => 2, "c" => 3)
println(d1, "\n")

d2 = Dict{String, String}()
d2["key1"] = "val1"
println(d2, "\n")

# look up an item
println(d1["b"], "\n")

# Add an item to a dictionary
d1["d"] = 4
println(d1, "\n")

# Test to see if an item is in a dictionary
println(haskey(d1, "e"), "\n")

# remove an item from a dictionary
delete!(d1, "c")
println(d1, "\n")

# get all the keys and values as arrays
println(keys(d1))
println(values(d1), "\n")

# Iterate over a dictionary's keys and values
for (key, val) in d1
    println(key, ", ", val)
end