#
# math:atan
#
# Get the arctangent value of a given ratio with fixed point precision
#> Scores
#  @t (in): the ratio value
#> Return data
#  arctangent value

# Check for cordic domain
scoreboard players set ::in value 141
scoreboard players set ::in size 2
execute store result score ::in min run function math:fixed_point/calc_const_default_value
scoreboard players operation ::in max = ::in min
scoreboard players operation ::in min *= ::const NEGONE
scoreboard players operation ::in value = ::in t
execute store result score ::math is_in_range run function math:is_in_range

# In range
execute if score ::math is_in_range = ::const TRUE run function math:atan/in_range

# Out range
execute if score ::math is_in_range = ::const FALSE run function math:atan/out_range

# Return data
return run scoreboard players get ::math atan
