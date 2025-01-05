#
# math:floating_point/get_fractional_part/positive_p
#

# Remove integer places
scoreboard players operation ::in pow = ::math::floating_point p
scoreboard players operation ::in pow *= ::const NEGONE
execute store result score ::math::floating_point temp0 run function math:utils/get_power_of_ten
execute store success score ::math::floating_point success if score ::math::floating_point number matches ..-1
execute if score ::math::floating_point number matches ..-1 run scoreboard players operation ::math::floating_point number *= ::const NEGONE
scoreboard players operation ::math::floating_point number /= ::math::floating_point temp0
execute if score ::math::floating_point success = ::const TRUE run scoreboard players operation ::math::floating_point number *= ::const NEGONE
scoreboard players set ::math::floating_point p 0
