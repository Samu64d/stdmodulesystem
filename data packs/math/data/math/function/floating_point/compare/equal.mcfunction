#
# math:floating_point/compare/equal
#
# Check if the first floating point number is equal to the second floating point number
#> Storage
#  @value0 (in): the first floating point
#  @value1 (in): the second floating point
#> Return data
#  boolean flag

# Decompose a
data modify storage io: value set from storage io: value0
function math:floating_point/common/decompose
scoreboard players operation ::math::floating_point number_a = ::math::floating_point number
scoreboard players operation ::math::floating_point p_a = ::math::floating_point p

# Decompose b
data modify storage io: value set from storage io: value1
function math:floating_point/common/decompose
scoreboard players operation ::math::floating_point number_b = ::math::floating_point number
scoreboard players operation ::math::floating_point p_b = ::math::floating_point p

# Align the numbers
execute unless score ::math::floating_point p_a = ::math::floating_point p_b run function math:floating_point/common/align

# Check for values
execute store success score ::math::floating_point compare_flag if score ::math::floating_point number_a = ::math::floating_point number_b

# Return data
return run scoreboard players get ::math::floating_point compare_flag
