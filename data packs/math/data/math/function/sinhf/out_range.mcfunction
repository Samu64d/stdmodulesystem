#
# math:sinhf/out_range
#

scoreboard players operation ::in pow = ::in p
execute store result score ::math mag_value run function math:utils/get_power_of_ten

# Remove sign
scoreboard players set ::math sign 1
execute if score ::in value matches ..-1 run scoreboard players set ::math sign -1
execute if score ::in value matches ..-1 run scoreboard players operation ::in value *= ::const NEGONE

# Sinh(x) = (exp(x) - exp(-x)) / 2

# Calculate exp(x)
scoreboard players operation ::in value = ::in angle
execute store result score ::math sinh run function math:expf

# Calculate exp(-x)
scoreboard players operation ::in value = ::math sinh
execute store result score ::math temp0 run function math:invf

# Sum values
scoreboard players operation ::math sinh -= ::math temp0

# Divide by two
scoreboard players operation ::in value0 = ::math sinh
scoreboard players set ::in value1 2
scoreboard players operation ::in value1 *= ::math mag_value
execute store result score ::math sinh run function math:divf

# Restore sign
scoreboard players operation ::math sinh *= ::math sign
