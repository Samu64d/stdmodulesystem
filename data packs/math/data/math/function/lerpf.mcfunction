#
# math:lerpf
#
# Interpolate a number between a and b with arbitrary fixed point precision
#> Scores
#  @a (in): the first value to interpolate
#  @b (in): the second value to interpolate
#  @t (in): the value of the interpolant (between 0 and 1)
#  @p (in): the fixed point digits
#> Return data
#  interpolaed value

# (1 - t) * a + t * b
scoreboard players operation ::in pow = ::in p
execute store result score ::in value0 run function math:utils/get_power_of_ten
scoreboard players operation ::in value0 -= ::in t
scoreboard players operation ::in value1 = ::in a
execute store result score ::math lerp run function math:mulf
scoreboard players operation ::in value0 = ::in t
scoreboard players operation ::in value1 = ::in b
execute store result score ::math temp0 run function math:mulf
scoreboard players operation ::math lerp += ::math temp0

# Return data
return run scoreboard players get ::math lerp
