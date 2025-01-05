#
# math:floating_point/add
#
# Sum two floating point numbers
#> Storage
#  @value0 (in): the first floating point number to sum
#  @value1 (in): the second floating point number to sum
#  @result (out): the result value
#> Return void

# Decompose value0
data modify storage io: value set from storage io: value0
function math:floating_point/common/decompose
scoreboard players operation ::math::floating_point number_a = ::math::floating_point number
scoreboard players operation ::math::floating_point p_a = ::math::floating_point p

# Decompose value1
data modify storage io: value set from storage io: value1
function math:floating_point/common/decompose
scoreboard players operation ::math::floating_point number_b = ::math::floating_point number
scoreboard players operation ::math::floating_point p_b = ::math::floating_point p

# Align the numbers
execute unless score ::math::floating_point p_a = ::math::floating_point p_b run function math:floating_point/common/align

# Avoid overflow on large value
execute if score ::math::floating_point number_a matches ..-1 if score ::math::floating_point number_b matches ..-1 run function math:floating_point/add/check_for_negative_overflow
execute if score ::math::floating_point number_a matches 0.. if score ::math::floating_point number_b matches 0.. run function math:floating_point/add/check_for_positive_overflow

# Do sum
scoreboard players operation ::math::floating_point number = ::math::floating_point number_a
scoreboard players operation ::math::floating_point number += ::math::floating_point number_b
scoreboard players operation ::math::floating_point p = ::math::floating_point p_a

# Recompose
function math:floating_point/common/recompose
data modify storage io: result set from storage io: value
