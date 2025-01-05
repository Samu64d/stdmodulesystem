#
# number:to_fixed
#
# Format a number in a string with fixed point notation
#> Scores
#  @places (in): the decimal places
#> Storage
#  @number (in): the number
#  @string (out): the string
#> Return void

# Stringify the number
function number:stringify

# Find index of "."
data modify storage io: search set value "."
execute store result score ::number index run function string:find

# Is not fractional
execute if score ::number index matches -1 if score ::in places matches 1.. run function number:to_fixed/is_not_fractional

# Is fractional
execute if score ::number index matches 0.. run function number:to_fixed/is_fractional
