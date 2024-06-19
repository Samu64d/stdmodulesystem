#
# math:atanh/out_range
#

# Atanh(x) = log((1 + x) / (1 - x)) / 2

# Calculate sign
scoreboard players set ::math sign 1
execute if score ::in t matches ..-1 run scoreboard players set ::math sign -1
execute if score ::in t matches ..-1 run scoreboard players operation ::in t *= ::const NEGONE

# Calculate (1 + x) / (1 - x)
scoreboard players operation ::in value0 = ::math::const FXP_DEF_MAG
scoreboard players operation ::in value0 += ::in t
scoreboard players operation ::in value1 = ::math::const FXP_DEF_MAG
scoreboard players operation ::in value1 -= ::in t
execute store result score ::in value run function math:div

# Compute logarithm
execute store result score ::in value0 run function math:log

# Divide by two
scoreboard players operation ::in value1 = ::math::const FXP_DEF_MAG
scoreboard players operation ::in value1 *= ::int 2
execute store result score ::math atanh run function math:div

# Restore sign
scoreboard players operation ::math atanh *= ::math sign
