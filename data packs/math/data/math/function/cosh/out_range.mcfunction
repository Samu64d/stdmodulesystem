#
# math:cosh/out_range
#

# Remove sign
execute if score ::in value matches ..-1 run scoreboard players operation ::in value *= ::const NEGONE

# Cosh(x) = (exp(x) + exp(-x)) / 2

# Calculate exp(x)
scoreboard players operation ::in value = ::in angle
execute store result score ::math cosh run function math:exp

# Calculate exp(-x)
scoreboard players operation ::in value = ::math cosh
execute store result score ::math temp0 run function math:inv

# Sum values
scoreboard players operation ::math cosh += ::math temp0

# Divide by two
scoreboard players operation ::in value0 = ::math cosh
scoreboard players set ::in value1 2
scoreboard players operation ::in value1 *= ::math::const FXP_DEF_MAG
execute store result score ::math cosh run function math:div
