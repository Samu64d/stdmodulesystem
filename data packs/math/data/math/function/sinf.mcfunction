#
# math:sinf
#
# Get the sine value of a given angle in radians with arbitrary fixed point precision
#> Scores
#  @angle (in): the angle measure expressed in radians
#  @p (in): the fixed point digits
#> Return data
#  sine value

scoreboard players operation ::math p = ::in p

# Limit angle range
scoreboard players operation ::math angle = ::in angle
scoreboard players set ::math sign 1
function math:sinf_cosf/limit_range

# Rescale input
scoreboard players operation ::in value = ::math angle
scoreboard players operation ::in p = ::math p
execute store result score ::in angle run function math:cordic/scaling/scale_input

# Calculate
function math:cordic/functions/sin

# Rescale output
scoreboard players operation ::in value = ::out sin
scoreboard players operation ::in p = ::math p
execute store result score ::math sin run function math:cordic/scaling/scale_output

# Restore sign
scoreboard players operation ::math sin *= ::math sign

# Return data
return run scoreboard players get ::math sin
