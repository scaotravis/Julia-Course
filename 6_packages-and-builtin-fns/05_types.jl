# Starting custom types example file for Learning Julia

# Create a new custom type using the struct keyword
struct MyType
    field1::Int
    field2::String
end

# instantiate the type
x = MyType(10, "ABC")
println(x)
println("field1 of x is ", x.field1, "\n")

# by default, fields in a type is immutable
# ex. x.field1 = 20 will result in an error

# use "mutable" to make a type that can be altered
mutable struct MyMutableType
    field1::Int
    field2::String
end

y = MyMutableType(10, "ABC")
y.field2 = "CDE"
println(y, "\n")

# use the isa() method to see if a variable is a given type
println("Is x a MyMutableType: ", isa(x, MyMutableType))
println("Is y a MyMutableType: ", isa(y, MyMutableType))
