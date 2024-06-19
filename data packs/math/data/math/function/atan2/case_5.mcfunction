#
# math:atan2/case_5
#

# Atan(y / x) = -1/2 pi
scoreboard players operation ::math atan2 = ::math::const FXP_1_PI_2
scoreboard players operation ::math atan2 *= ::const NEGONE
