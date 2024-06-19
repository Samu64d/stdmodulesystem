#
# math:log2/out_range
#

# Log2(x * 10^n) = log2(x) + n * log2(10)

# Compute n
scoreboard players operation ::math n = ::math::bkm::const BKM_FXP_SIZE
scoreboard players operation ::math n -= ::math::const FXP_DEF_SIZE
scoreboard players operation ::math n *= ::math::const FXP_DEF_MAG

# Compute log2(x)

# Calculate
function math:log2/check_domain

# Rescale output
scoreboard players operation ::in p = ::math::const FXP_DEF_SIZE
execute if score ::in value matches ..34 run scoreboard players add ::in p 1
scoreboard players operation ::in value = ::out log2
execute store result score ::math log2 run function math:bkm/scaling/scale_output

# Compute n * log2(10)
scoreboard players operation ::in value0 = ::math n
scoreboard players operation ::in value1 = ::math::const FXP_LOG2_10
execute store result score ::math temp0 run function math:mul

# Add to result
scoreboard players operation ::math log2 += ::math temp0
