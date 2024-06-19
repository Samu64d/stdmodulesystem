#
# math:abs
#
# Return the absolute value of a number
#> Scores
#  @value (in): the number
#> Return data
#  absolute value

scoreboard players operation ::math absolute_value = ::in value
execute if score ::math absolute_value matches ..-1 run scoreboard players operation ::math absolute_value *= ::const NEGONE

# Return value
return run scoreboard players get ::math absolute_value
