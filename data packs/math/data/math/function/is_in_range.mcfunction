#
# math:is_in_range
#
# Check if a number is inside an inclusive range
#> Scores
#  @value (in): the number value
#  @min (in): the range lower limit
#  @max (in): the range upper limit
#> Return value
#  boolean flag

scoreboard players operation ::math success = ::const TRUE
execute if score ::in value < ::in min run scoreboard players operation ::math success = ::const FALSE
execute if score ::in value > ::in max run scoreboard players operation ::math success = ::const FALSE

# Return data
return run scoreboard players get ::math success
