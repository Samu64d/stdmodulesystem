#
# math:bitwise/signed_right_shift/calc
#

# Check for value
scoreboard players operation ::math temp0 = ::inout value

# Positive
execute if score ::math temp0 matches 1.. run function math:bitwise/signed_right_shift/positive_value

# Negative
execute if score ::math temp0 matches ..-1 run function math:bitwise/signed_right_shift/negative_value
