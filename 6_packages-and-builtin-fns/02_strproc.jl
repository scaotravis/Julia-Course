# Starting string processing example for Learning Julia

# simple string operations - length, size
mystr = "Ångström"
teststr = "jμΛIα" # test string with some Greek characters
println("String length of mystr: ", length(mystr))
println("Size of mystr: ", sizeof(mystr))
println("String length of teststr: ", length(teststr))
println("Size of teststr: ", sizeof(teststr), "\n") # non-English unicode characters take up 
                                                    # more than one bit in storage

# concatenation and repetition operators
teststr = "Hello" * ", world!"
println(teststr)

teststr = "ABCD" ^ 3 # repeat ABCD 3 times
println(teststr, "\n")

# search for substrings
teststr = "Julia programming is awesome"
println(findnext("Julia", teststr, 0)) # find test range where Julia appears
println(occursin("some", teststr), "\n")

# pad strings either left or right
teststr = lpad("Test String", 20) # left padded by 20 spaces
println(teststr)
teststr = rpad("Test String", 20, '*') # right padded by 20 '*' characters
println(teststr, "\n")

# create a string from an array
arr = ["Lions", "Tigers", "Bears"]
teststr = join(arr, ", ", ", and ") # last argument specifies what to insert between the last two
println(teststr)
