#
# math:log10/out_range
#

# Log10(x * 10^n) = log10(x) + n

# Compute n
scoreboard players operation ::math n = ::math::bkm::const BKM_FXP_SIZE
scoreboard players operation ::math n -= ::math::const FXP_DEF_SIZE
scoreboard players operation ::math n *= ::math::const FXP_DEF_MAG

# Compute log10(x)

# Calculate
function math:bkm/functions/log10

# Rescale output
scoreboard players operation ::in value = ::out log10
scoreboard players operation ::in p = ::math::const FXP_DEF_SIZE
execute store result score ::math log10 run function math:bkm/scaling/scale_output

# Add n to result
scoreboard players operation ::math log10 += ::math n
