#
# math:floating_point/to_score
#
# Cast a floating point number to a score
#> Storage
#  @value (in): the floating point number
#> Return data
#  result

# Decompose number
function math:floating_point/common/decompose

# Check for scale factor
execute if score ::math::floating_point p matches ..-1 run function math:floating_point/to_score/negative_p
execute if score ::math::floating_point p matches 0.. run function math:floating_point/to_score/positive_p

# Return data
return run scoreboard players get ::math::floating_point value
