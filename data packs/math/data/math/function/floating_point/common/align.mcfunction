#
# math:floating_point/common/align
#

# Normalize

# A
scoreboard players operation ::in value = ::math::floating_point number_a
execute store result score ::math::floating_point temp0 run function math:order_of_magnitude/get
scoreboard players set ::in pow 8
scoreboard players operation ::in pow -= ::math::floating_point temp0
execute if score ::in pow matches ..-1 run scoreboard players set ::in pow 0
execute store result score ::math::floating_point temp0 run function math:utils/get_power_of_ten
scoreboard players operation ::math::floating_point number_a *= ::math::floating_point temp0
scoreboard players operation ::math::floating_point p_a -= ::in pow

# B
scoreboard players operation ::in value = ::math::floating_point number_b
execute store result score ::math::floating_point temp0 run function math:order_of_magnitude/get
scoreboard players set ::in pow 8
scoreboard players operation ::in pow -= ::math::floating_point temp0
execute if score ::in pow matches ..-1 run scoreboard players set ::in pow 0
execute store result score ::math::floating_point temp0 run function math:utils/get_power_of_ten
scoreboard players operation ::math::floating_point number_b *= ::math::floating_point temp0
scoreboard players operation ::math::floating_point p_b -= ::in pow

# Check for align
execute if score ::math::floating_point p_a < ::math::floating_point p_b run function math:floating_point/common/align_a
execute if score ::math::floating_point p_a > ::math::floating_point p_b run function math:floating_point/common/align_b
