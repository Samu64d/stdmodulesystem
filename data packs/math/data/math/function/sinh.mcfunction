#
# math:sinh
#
# Get the hyperbolic sine value of a given angle in radians with fixed point precision
#> Scores
#  @angle (in): the angle measure expressed in radians
#> Return data
#  hyperbolic sine value

# Check for cordic domain
scoreboard players set ::in value 111
scoreboard players set ::in size 2
execute store result score ::in min run function math:fixed_point/calc_const_default_value
scoreboard players operation ::in max = ::in min
scoreboard players operation ::in min *= ::const NEGONE
scoreboard players operation ::in value = ::in angle
execute store result score ::math is_in_range run function math:is_in_range

# In range
execute if score ::math is_in_range = ::const TRUE run function math:sinh/in_range

# Out range
execute if score ::math is_in_range = ::const FALSE run function math:sinh/out_range

# Return data
return run scoreboard players get ::math sinh
