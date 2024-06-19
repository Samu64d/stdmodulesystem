#
# math:powf/handle_fractional_part
#

# Pow(x, n) = exp(f) = exp(log(x) * n)

# Calculate f
scoreboard players operation ::in value = ::math value
scoreboard players operation ::in value *= ::int 10000
scoreboard players operation ::in p = ::math p
scoreboard players add ::in p 4
execute store result score ::in value0 run function math:logf
scoreboard players operation ::in value1 = ::math n_fract
execute store result score ::math f run function math:mulf

# Calculate exp(f)
scoreboard players operation ::in value = ::math f
scoreboard players operation ::in p = ::math p
scoreboard players add ::in p 4
execute store result score ::math pow_fract run function math:expf
