#
# math:bkm/functions/common/add_residual_value
#

scoreboard players operation ::math::bkm temp0 = ::math::bkm::const BKM_FXP_MAG
scoreboard players operation ::math::bkm temp0 -= ::math::bkm x
scoreboard players operation ::math::bkm temp0 *= ::math::bkm rest_ratio
scoreboard players operation ::math::bkm temp0 /= ::const 10E4
scoreboard players operation ::math::bkm y -= ::math::bkm temp0
