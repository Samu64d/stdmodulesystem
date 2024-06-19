#
# math:sinh/out_range
#

# Remove sign
scoreboard players set ::math sign 1
execute if score ::in value matches ..-1 run scoreboard players set ::math sign -1
execute if score ::in value matches ..-1 run scoreboard players operation ::in value *= ::const NEGONE

# Sinh(x) = (exp(x) - exp(-x)) / 2

# Calculate exp(x)
scoreboard players operation ::in value = ::in angle
execute store result score ::math sinh run function math:exp

# Calculate exp(-x)
scoreboard players operation ::in value = ::math sinh
execute store result score ::math temp0 run function math:inv

# Sub values
scoreboard players operation ::math sinh -= ::math temp0

# Divide by two
scoreboard players operation ::in value0 = ::math sinh
scoreboard players set ::in value1 2
scoreboard players operation ::in value1 *= ::math::const FXP_DEF_MAG
execute store result score ::math sinh run function math:div

# Restore sign
scoreboard players operation ::math sinh *= ::math sign
