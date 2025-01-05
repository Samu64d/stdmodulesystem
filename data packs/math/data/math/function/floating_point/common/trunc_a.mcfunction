#
# math:floating_point/common/trunc_a
#

# Remove places
scoreboard players operation ::in pow = ::math::floating_point shift
execute store result score ::math::floating_point temp0 run function math:utils/get_power_of_ten
scoreboard players operation ::math::floating_point number_a /= ::math::floating_point temp0
scoreboard players operation ::math::floating_point p_a = ::math::floating_point p_b
