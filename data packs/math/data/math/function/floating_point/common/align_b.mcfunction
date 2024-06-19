#
# math:floating_point/common/align_b
#

scoreboard players operation ::math::floating_point shift = ::math::floating_point p_a
scoreboard players operation ::math::floating_point shift -= ::math::floating_point p_b
execute if score ::math::floating_point shift matches 10.. run function math:floating_point/common/zero_b
execute if score ::math::floating_point shift matches ..9 run function math:floating_point/common/trunc_b
