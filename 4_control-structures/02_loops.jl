# Starting point for loops example for Learning Julia

# basic for loop
for i in 1:10
    println("i: ", i)
end

# can be any iterable, not just a range
for i in ["Bingo", "Bango", "Bongo", "Irving"]
    println(i)
end

# Nested for loop
for i in 1:3, j in 2:4 # i is the outer loop, j is the inner loop
    println("i: ", i, ", j: ", j)
end

# while loop
i = 1
while (i <= 5)
    println("global i = ", i)
    global i += 1
end

# Using enumeration within a loop
teams = ("Giants", "Wizards", "Dragons", "Knights", "Kings")
for (idx, val) in enumerate(teams)
    println(idx, ". ", val)
end

# Loop control - breaking and continuing
for i in 1:10
    if i % 3 == 0 
        continue # skip iterations when i is divisible by 3
    elseif i > 7
        break # exit loop when i > 7
    end
    println(i)
end

