#
# math:bkm/functions/exppos/add_residual_value
#

scoreboard players operation ::math::bkm temp0 = ::math::bkm y
scoreboard players operation ::math::bkm temp0 /= ::const 10E5
scoreboard players operation ::math::bkm temp0 *= ::math::bkm x
scoreboard players operation ::math::bkm temp0 /= ::const 10E3
scoreboard players operation ::math::bkm y += ::math::bkm temp0
