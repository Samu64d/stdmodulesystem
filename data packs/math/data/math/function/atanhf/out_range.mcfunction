#
# math:atanhf/out_range
#

scoreboard players operation ::in pow = ::math p
execute store result score ::math mag_value run function math:utils/get_power_of_ten

# Atanh(x) = log((1 + x) / (1 - x)) / 2

# Calculate sign
scoreboard players set ::math sign 1
execute if score ::in t matches ..-1 run scoreboard players set ::math sign -1
execute if score ::in t matches ..-1 run scoreboard players operation ::in t *= ::const NEGONE

# Calculate (1 + x) / (1 - x)
scoreboard players operation ::in value0 = ::math mag_value
scoreboard players operation ::in value0 += ::in t
scoreboard players operation ::in value1 = ::math mag_value
scoreboard players operation ::in value1 -= ::in t
execute store result score ::in value run function math:divf

# Compute logarithm
execute store result score ::in value0 run function math:logf

# Divide by two
scoreboard players operation ::in value1 = ::math mag_value
scoreboard players operation ::in value1 *= ::int 2
execute store result score ::math atanh run function math:divf

# Restore sign
scoreboard players operation ::math atanh *= ::math sign
