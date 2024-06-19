#
# math:atan2/case_3
#

# Compute atan(y / x)
function math:atan2/check_range

# Check for range
execute if score ::math is_in_range = ::const FALSE run scoreboard players operation ::math atan2 *= ::const NEGONE
execute if score ::math is_in_range = ::const FALSE run return 0

# Subtract pi
scoreboard players operation ::math atan2 -= ::math::const FXP_PI
