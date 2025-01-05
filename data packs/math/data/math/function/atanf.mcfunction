#
# math:atanf
#
# Get the arctangent value of a given ratio with arbitrary fixed point precision
#> Scores
#  @t (in): the ratio value
#  @p (in): the fixed point digits
#> Return data
#  arctangent value

scoreboard players operation ::math p = ::in p

# Check for cordic domain
scoreboard players set ::in value 141
scoreboard players set ::in size 2
execute store result score ::in min run function math:fixed_point/calc_const_value
scoreboard players operation ::in max = ::in min
scoreboard players operation ::in min *= ::const NEGONE
scoreboard players operation ::in value = ::in t
execute store result score ::math is_in_range run function math:is_in_range

# In range
execute if score ::math is_in_range = ::const TRUE run function math:atanf/in_range

# Out range
execute if score ::math is_in_range = ::const FALSE run function math:atanf/out_range

# Return data
return run scoreboard players get ::math atan
