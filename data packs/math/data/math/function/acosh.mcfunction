#
# math:acosh
#
# Get the hyperbolic arccosine value of a given ratio with fixed point precision
#> Scores
#  @t (in): the ratio value
#> Return data
#  hyperbolic arccosine value

# Check for cordic domain
scoreboard players set ::in value 101
scoreboard players set ::in size 2
execute store result score ::in min run function math:fixed_point/calc_const_default_value
scoreboard players set ::in value 410
scoreboard players set ::in size 2
execute store result score ::in max run function math:fixed_point/calc_const_default_value
scoreboard players operation ::in value = ::in t
execute store result score ::math is_in_range run function math:is_in_range

# In range
execute if score ::math is_in_range = ::const TRUE run function math:acosh/in_range

# Out range
execute if score ::math is_in_range = ::const FALSE run function math:acosh/out_range

# Return data
return run scoreboard players get ::math acosh
