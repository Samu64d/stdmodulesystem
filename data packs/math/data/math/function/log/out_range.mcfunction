#
# math:log/out_range
#

# Log(x * 10^n) = log(x) + n * log(10)

# Compute n
scoreboard players operation ::math n = ::math::bkm::const BKM_FXP_SIZE
scoreboard players operation ::math n -= ::math::const FXP_DEF_SIZE
scoreboard players operation ::math n *= ::math::const FXP_DEF_MAG

# Compute log(x)

# Calculate
function math:bkm/functions/log

# Rescale output
scoreboard players operation ::in value = ::out log
scoreboard players operation ::in p = ::math::const FXP_DEF_SIZE
execute store result score ::math log run function math:bkm/scaling/scale_output

# Compute n * log(10)
scoreboard players operation ::in value0 = ::math n
scoreboard players operation ::in value1 = ::math::const FXP_LOGE_10
execute store result score ::math temp0 run function math:mul

# Add to result
scoreboard players operation ::math log += ::math temp0
