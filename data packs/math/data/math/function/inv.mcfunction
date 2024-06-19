#
# math:inv
#
# Get the inverse of a number with fixed point precision
#> Scores
#  @value (in): the number
#> Return data
#  inverse value

# Divide by one
scoreboard players operation ::in value0 = ::math::const FXP_DEF_MAG
scoreboard players operation ::in value1 = ::in value
execute store result score ::math result run function math:div

# Return data
return run scoreboard players get ::math result
