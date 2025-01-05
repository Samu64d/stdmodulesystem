#
# number:parse_int
#
# Parse a string and get the specified integer
#> Storage
#  @string (in): the string
#  @number (out): the number
#> Return void

# Parse float
function number:parse_float

# Convert to integer
execute store result storage io: number int 1.0 run data get storage io: number 1.0
