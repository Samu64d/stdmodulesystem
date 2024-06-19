#
# math:clamp
#
# Clamp a number between a min and a max value
#> Scores
#  @value (in): the number
#  @min (in): the lower limit
#  @max (in): the upper limit
#> Return data
#  clamped value

execute if score ::in value < ::in min run scoreboard players operation ::in value = ::in min
execute if score ::in value > ::in max run scoreboard players operation ::in value = ::in max

# Return data
return run scoreboard players get ::in value
