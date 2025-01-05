#
# math:log2f/out_range
#

# Log2(x * 10^n) = log2(x) + n * log2(10)

# Compute n
scoreboard players operation ::math n = ::math::bkm::const BKM_FXP_SIZE
scoreboard players operation ::math n -= ::math p
scoreboard players operation ::math n *= ::math mag_value

# Compute log2(x)

# Calculate
function math:log2/check_domain

# Rescale output
scoreboard players operation ::in p = ::math p
execute if score ::in value matches ..34 run scoreboard players add ::in p 1
scoreboard players operation ::in value = ::out log2
execute store result score ::math log2 run function math:bkm/scaling/scale_output

# Compute n * log2(10)
scoreboard players operation ::in value = ::math::const LOG2_10
scoreboard players operation ::in size = ::math::const LOG2_10_SIZE
scoreboard players operation ::in p = ::math p
execute store result score ::in value1 run function math:fixed_point/calc_const_value
scoreboard players operation ::in value0 = ::math n
scoreboard players operation ::in p = ::math p
execute store result score ::math temp0 run function math:mulf

# Add to result
scoreboard players operation ::math log2 += ::math temp0
