#
# math:is_even
#
# Check if a number is even with fixed point precision
#> Scores
#  @value (in): the number value
#> Return value
#  boolean flag

scoreboard players set ::math temp0 2
scoreboard players operation ::math temp0 *= ::math::const FXP_DEF_MAG
scoreboard players operation ::in value %= ::math temp0

# Return data
return run execute if score ::in value matches 0
