#
# math:clampeq
#
# Clamp a number between a simmetric interval
#> Scores
#  @value (in): the number
#  @max (in): the upper limit
#> Return data
#  clamped value

scoreboard players operation ::in min = ::in max
scoreboard players operation ::in min *= ::const NEGONE
execute if score ::in max matches ..-1 run function math:clampeq/swap
return run function math:clamp
