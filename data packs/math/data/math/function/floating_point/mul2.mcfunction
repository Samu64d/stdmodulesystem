#
# math:floating_point/mul2
#
# Multiply two floating point numbers using digit by digit multiplication
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

# Remove sign
scoreboard players operation ::math::floating_point number_a_sign = ::math::floating_point number_a
scoreboard players operation ::math::floating_point number_b_sign = ::math::floating_point number_b
execute if score ::math::floating_point number_a matches ..-1 run scoreboard players operation ::math::floating_point number_a *= ::const NEGONE
execute if score ::math::floating_point number_b matches ..-1 run scoreboard players operation ::math::floating_point number_b *= ::const NEGONE

# Avoid overflow on large value
execute store success score ::math::floating_point fix_p if score ::math::floating_point number_a matches 238609295..
execute if score ::math::floating_point fix_p = ::const TRUE run scoreboard players operation ::math::floating_point number_a /= ::const 10E1

# Get order of magnitude of a
scoreboard players operation ::in value = ::math::floating_point number_a
execute store result score ::in pow run function math:order_of_magnitude/get

# Get order of magnitude of b
scoreboard players operation ::in value = ::math::floating_point number_b
execute store result score ::math::floating_point temp0 run function math:order_of_magnitude/get
scoreboard players operation ::in pow += ::math::floating_point temp0

# Calculate the maximum precision without getting an overflow
scoreboard players operation ::in pow -= ::int 8
scoreboard players set ::math::floating_point underflow 1
execute if score ::in pow matches 1.. store result score ::math::floating_point underflow run function math:utils/get_power_of_ten

# Initialize values
scoreboard players set ::math::floating_point number 0
scoreboard players set ::math::floating_point c_err 0

# Multiply for each digit

# Digit 0
scoreboard players operation ::math::floating_point p_value = ::const 10E0
execute if score ::math::floating_point number_b >= ::const 10E0 run function math:floating_point/mul2/partial_mul

# Digit 1
scoreboard players operation ::math::floating_point p_value = ::const 10E1
execute if score ::math::floating_point number_b >= ::const 10E1 run function math:floating_point/mul2/partial_mul

# Digit 2
scoreboard players operation ::math::floating_point p_value = ::const 10E2
execute if score ::math::floating_point number_b >= ::const 10E2 run function math:floating_point/mul2/partial_mul

# Digit 3
scoreboard players operation ::math::floating_point p_value = ::const 10E3
execute if score ::math::floating_point number_b >= ::const 10E3 run function math:floating_point/mul2/partial_mul

# Digit 4
scoreboard players operation ::math::floating_point p_value = ::const 10E4
execute if score ::math::floating_point number_b >= ::const 10E4 run function math:floating_point/mul2/partial_mul

# Digit 5
scoreboard players operation ::math::floating_point p_value = ::const 10E5
execute if score ::math::floating_point number_b >= ::const 10E5 run function math:floating_point/mul2/partial_mul

# Digit 6
scoreboard players operation ::math::floating_point p_value = ::const 10E6
execute if score ::math::floating_point number_b >= ::const 10E6 run function math:floating_point/mul2/partial_mul

# Digit 7
scoreboard players operation ::math::floating_point p_value = ::const 10E7
execute if score ::math::floating_point number_b >= ::const 10E7 run function math:floating_point/mul2/partial_mul

# Digit 8
scoreboard players operation ::math::floating_point p_value = ::const 10E8
execute if score ::math::floating_point number_b >= ::const 10E8 run function math:floating_point/mul2/partial_mul

# Digit 9
scoreboard players operation ::math::floating_point p_value = ::const 10E9
execute if score ::math::floating_point number_b >= ::const 10E9 run function math:floating_point/mul2/partial_mul

# Add error value
scoreboard players operation ::math::floating_point c_err /= ::math::floating_point underflow
scoreboard players operation ::math::floating_point number += ::math::floating_point c_err

# Set sign
execute if score ::math::floating_point number_a_sign matches ..-1 if score ::math::floating_point number_b_sign matches 0.. run scoreboard players operation ::math::floating_point number *= ::const NEGONE
execute if score ::math::floating_point number_a_sign matches 0.. if score ::math::floating_point number_b_sign matches ..-1 run scoreboard players operation ::math::floating_point number *= ::const NEGONE

# Update the characteristic
scoreboard players operation ::math::floating_point p = ::math::floating_point p_a
scoreboard players operation ::math::floating_point p += ::math::floating_point p_b
execute if score ::in pow matches 1.. run scoreboard players operation ::math::floating_point p += ::in pow
execute if score ::math::floating_point fix_p = ::const TRUE run scoreboard players add ::math::floating_point p 1

# Recompose
function math:floating_point/common/recompose
data modify storage io: result set from storage io: value
