#
# math:atan2f/check_range
#

# Compute t
scoreboard players operation ::in value0 = ::math y
scoreboard players operation ::in value1 = ::math x
execute store result score ::math t run function math:divf

# Check for cordic domain
scoreboard players set ::in value 141
scoreboard players set ::in size 2
execute store result score ::in min run function math:fixed_point/calc_const_value
scoreboard players operation ::in max = ::in min
scoreboard players operation ::in min *= ::const NEGONE
scoreboard players operation ::in value = ::math t
execute store result score ::math is_in_range run function math:is_in_range

# In range
execute if score ::math is_in_range = ::const TRUE run function math:atan2f/in_range

# Out range
execute if score ::math is_in_range = ::const FALSE run function math:atan2f/out_range
