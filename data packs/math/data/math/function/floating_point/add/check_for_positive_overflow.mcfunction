#
# math:floating_point/add/check_for_positive_overflow
#

scoreboard players operation ::math::floating_point diff = ::const INT_MAX
scoreboard players operation ::math::floating_point diff -= ::math::floating_point number_a
execute if score ::math::floating_point diff < ::math::floating_point number_b run function math:floating_point/add/avoid_overflow
