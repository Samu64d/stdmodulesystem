#
# math:acosh/out_range
#

# Acosh(x) = log(x + sqrt(x^2 - 1))

# Calculate x + sqrt(x^2 - 1)

# Avoid overflow for large values of x^2
scoreboard players operation ::math hundred_value = ::math::const FXP_DEF_MAG
scoreboard players operation ::math hundred_value *= ::const 10E2
execute if score ::in t < ::math hundred_value run function math:acosh/calc_root
execute if score ::in t >= ::math hundred_value run scoreboard players operation ::in value = ::in t

# Add x
scoreboard players operation ::in value += ::in t

# Compute logarithm
execute store result score ::math acosh run function math:log
