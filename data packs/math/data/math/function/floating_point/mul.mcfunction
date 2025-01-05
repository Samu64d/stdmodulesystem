#
# math:floating_point/mul
#
# Multiply two floating point numbers
#> Storage
#  @value0 (in): the first floating point number to multiply
#  @value1 (in): the second floating point number to multiply
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

# Multiply numbers using scale factor
execute store result storage io: scale int 1.0 run scoreboard players get ::math::floating_point number_a
function math:floating_point/mul/to_storage with storage io:

# Get from storage
function math:floating_point/from_storage

# Decompose number
function math:floating_point/common/decompose

# Adjust exponent
scoreboard players operation ::math::floating_point p += ::math::floating_point p_a
scoreboard players operation ::math::floating_point p += ::math::floating_point p_b

# Recompose number
function math:floating_point/common/recompose
data modify storage io: result set from storage io: value
