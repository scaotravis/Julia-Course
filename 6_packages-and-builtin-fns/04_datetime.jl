# Starting point date and time example for Learning Julia

# import the Dates module to use the code it contains
using Dates

# create new Date and DateTime
d1 = Date(2018, 12, 22)
dt1 = DateTime(2019, 7, 28)
println("Date: ", d1)
println("DateTime: ", dt1, "\n")

# parse a date or date/time string using DateFormat
df1 = DateFormat("y-m-d")
d2 = Date("2020-10-10", df1) # parse the String using DateFormat df1
println("Parsed Date: ", d2, "\n")

# differences between Dates and Times
d3 = Date(2019, 12, 22)
d4 = Date(2019, 7, 28)
dt2 = DateTime(2000, 01, 01)
dt3 = DateTime(2000, 12, 31)

println("Does d4 comes before d3: ", d4 < d3)
println("Difference between d4 and d3: ", d3 - d4)
println("Difference between dt2 and dt3: ", dt2 - dt3, "\n")

# access the values of a date or time
println("Year of d3: ", Dates.year(d3))
println("Week of d4: ", Dates.week(d4), "\n")

# query functions
println("Day of week for d3: ", Dates.dayofweek(d3))
println("Name of day of week for d3: ", Dates.dayname(d3))
println("Is d3 in leap year: ", Dates.isleapyear(d3), "\n")

# adjuster functions
println("First day of week for d4: ", Dates.firstdayofweek(d4))
println("Last day of month for d4: ", Dates.lastdayofmonth(d4))
