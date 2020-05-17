# Starting example file for Julia number types

# Julia defines a set of specific sub-types for numbers
# Signed integers: Int, Int8, Int16, Int32, Int64, BigInt
a = Int16(1)
println(typeof(a))

b = Int(2000)
println(typeof(b))

# Unsigned integers: UInt, UInt8, UInt16, UInt32, UInt64
c = UInt16(1)
println(typeof(c))

d = UInt(2000)
println(typeof(d))

# typemax() and typemin() will provide max and min values
println(typemax(Int8))
println(typemax(Int32))
println(typemax(Int64))
println(typemin(Int64))

# Use the WORDSIZE property to see what type of system this is 
println(Sys.WORD_SIZE)

# Trying to assign a number too large for the type will fail and give an error
# CANNOT do: a = UInt(300)

# Special values represent Infinity and not-a-number
println(1.0 / 0.0)
println(1.0 / Inf)
println(0.0 / 0.0)

# zero() and one() functions produce values for a given type
println(zero(Float64))
println(one(UInt32))