#
# math:exp/out_range
#

# Exp(x) = exp(x - [x]) * exp([x])

# Push the element onto the stack
scoreboard players operation ::in stack_score = ::in value
function stdmodulesystem:stack/push_score

# Calculate exp(x - [x])
execute store result score ::math x_int run function math:get_integer_part
scoreboard players operation ::math temp0 = ::math x_int
scoreboard players operation ::math temp0 /= ::math::const FXP_DEF_MAG
execute store result storage io: i int 1.0 run scoreboard players get ::math temp0
function math:exp/get_expi with storage io:

# Convert to floating point for better precision
function math:floating_point/from_storage
data modify storage math:volatile value set from storage io: result

# Pop the element from the stack
function stdmodulesystem:stack/pop_score
scoreboard players operation ::in value = ::out stack_score

# Calculate exp([x])
execute store result score ::math x_fract run function math:get_fractional_part

# Rescale input
scoreboard players operation ::in value = ::math x_fract
scoreboard players operation ::in p = ::math::const FXP_DEF_SIZE
execute store result score ::in value run function math:bkm/scaling/scale_input

# Calculate
function math:bkm/functions/exp

# Convert to floating point for better precision
scoreboard players operation ::in value = ::out exp
scoreboard players operation ::in p = ::math::bkm::const BKM_FXP_SIZE
function math:floating_point/from_fixed_point
data modify storage io: value1 set from storage io: result

# Multiply values
data modify storage io: value0 set from storage math:volatile value
function math:floating_point/mul

# To fixed point
scoreboard players operation ::in p = ::math::const FXP_DEF_SIZE
data modify storage io: value set from storage io: result
execute store result score ::math exp run function math:floating_point/to_fixed_point
