#
# math:pow
#
# Calculate the n-th power value of a number with fixed point precision
#> Scores
#  @value (in): the number
#  @n (in): the power
#> Return data
#  power value

scoreboard players operation ::math value = ::in value

# Check for sign
scoreboard players set ::math sign 1
scoreboard players operation ::in value = ::in n
execute store result score ::math temp0 run function math:is_even
execute if score ::math value matches ..-1 if score ::math temp0 = ::const FALSE run scoreboard players set ::math sign -1
execute if score ::math value matches ..-1 if score ::math temp0 = ::const FALSE run scoreboard players operation ::math value *= ::const NEGONE

# Check for inverse
scoreboard players operation ::math inverse = ::const FALSE
execute if score ::in n matches ..-1 run scoreboard players operation ::math inverse = ::const TRUE
execute if score ::in n matches ..-1 run scoreboard players operation ::in n *= ::const NEGONE

# Pow(x, n) = pow(x, [n]) * pow(x, n - [n])

# Calculate pow(x, [n])
scoreboard players operation ::in value = ::in n
execute store result score ::math n_int run function math:get_integer_part
scoreboard players operation ::math pow_int = ::math::const FXP_DEF_MAG
execute if score ::math n_int matches 1.. run function math:pow/handle_integer_part

# Calculate pow(x, n - [n])
scoreboard players operation ::in value = ::in n
execute store result score ::math n_fract run function math:get_fractional_part
scoreboard players operation ::math pow_fract = ::math::const FXP_DEF_MAG
scoreboard players operation ::math pow_fract *= ::int 10000
execute if score ::math n_fract matches 1.. run function math:pow/handle_fractional_part

# Convert to floating point and apply rescaling

# Pow int
scoreboard players operation ::in value = ::math pow_int
scoreboard players operation ::in p = ::math::const FXP_DEF_SIZE
function math:floating_point/from_fixed_point
data modify storage math:volatile value set from storage io: result

# Pow fract
scoreboard players operation ::in value = ::math pow_fract
scoreboard players operation ::in p = ::math::const FXP_DEF_SIZE
scoreboard players add ::in p 4
function math:floating_point/from_fixed_point
data modify storage io: value1 set from storage io: result

# Multiply values
data modify storage io: value0 set from storage math:volatile value
function math:floating_point/mul

# Convert back to fixed point
scoreboard players operation ::in p = ::math::const FXP_DEF_SIZE
data modify storage io: value set from storage io: result
execute store result score ::math pow run function math:floating_point/to_fixed_point

# Check for inverse
scoreboard players operation ::in value = ::math pow
execute if score ::math inverse = ::const TRUE store result score ::math pow run function math:inv

# Restore sign
scoreboard players operation ::math pow *= ::math sign

# Return data
return run scoreboard players get ::math pow
