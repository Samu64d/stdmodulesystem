#
# math:bitwise/right_shift/negative_value
#

scoreboard players operation ::in value += ::const 2E31

# Get the n-th power of 2 value
scoreboard players operation ::in pow = ::in n
execute store result score ::math pow_value run function math:utils/get_power_of_two

# Divide
scoreboard players operation ::in value /= ::math pow_value

# Get the (31-n)-th power of 2 value
scoreboard players set ::in pow 31
scoreboard players operation ::in pow -= ::in n
execute store result score ::math pow_value run function math:utils/get_power_of_two

# Add sign bit
scoreboard players operation ::in value += ::math pow_value
