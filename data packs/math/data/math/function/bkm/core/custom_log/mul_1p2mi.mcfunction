#
# math:bkm/core/custom_log/mul_1p2mi
#

# Update x
scoreboard players operation ::math::bkm x0 = ::math::bkm x
scoreboard players operation ::math::bkm x0 /= ::math::bkm pow
scoreboard players operation ::math::bkm x += ::math::bkm x0

# Update y
scoreboard players operation ::math::bkm y -= ::math::bkm e
