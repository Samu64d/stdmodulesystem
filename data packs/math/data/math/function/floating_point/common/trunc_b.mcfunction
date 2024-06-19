#
# math:floating_point/common/mul_b
#

# Remove places
scoreboard players operation ::in pow = ::math::floating_point shift
execute store result score ::math::floating_point temp0 run function math:utils/get_power_of_ten
scoreboard players operation ::math::floating_point number_b /= ::math::floating_point temp0
scoreboard players operation ::math::floating_point p_b = ::math::floating_point p_a
