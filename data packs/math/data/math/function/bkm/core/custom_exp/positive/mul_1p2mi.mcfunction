#
# math:bkm/core/custom_exp/positive/mul_1p2mi
#

# Update x
scoreboard players operation ::math::bkm x -= ::math::bkm e

# Update y
scoreboard players operation ::math::bkm y0 = ::math::bkm y
scoreboard players operation ::math::bkm y0 /= ::math::bkm pow
scoreboard players operation ::math::bkm y += ::math::bkm y0
