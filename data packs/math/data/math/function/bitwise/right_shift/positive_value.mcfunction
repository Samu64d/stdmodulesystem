#
# math:bitwise/right_shift/positive_value
#

# Get the n-th power of 2 value
scoreboard players operation ::in pow = ::in n
execute store result score ::math pow_value run function math:utils/get_power_of_two

# Divide
scoreboard players operation ::in value /= ::math pow_value
