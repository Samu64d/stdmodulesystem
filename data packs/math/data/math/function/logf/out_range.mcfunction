#
# math:logf/out_range
#

# Log(x * 10^n) = log(x) + n * log(10)

# Compute n
scoreboard players operation ::math n = ::math::bkm::const BKM_FXP_SIZE
scoreboard players operation ::math n -= ::math p
scoreboard players operation ::math n *= ::math mag_value

# Compute log(x)

# Calculate
function math:bkm/functions/log

# Rescale output
scoreboard players operation ::in value = ::out log
scoreboard players operation ::in p = ::math p
execute store result score ::math log run function math:bkm/scaling/scale_output

# Compute n * log(10)
scoreboard players operation ::in value = ::math::const LOGE_10
scoreboard players operation ::in size = ::math::const LOGE_10_SIZE
scoreboard players operation ::in p = ::math p
execute store result score ::in value1 run function math:fixed_point/calc_const_value
scoreboard players operation ::in value0 = ::math n
scoreboard players operation ::in p = ::math p
execute store result score ::math temp0 run function math:mulf

# Add to result
scoreboard players operation ::math log += ::math temp0
