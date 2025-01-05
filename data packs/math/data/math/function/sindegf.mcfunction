#
# math:sindegf
#
# Get the sine value of a given angle in degrees with arbitrary fixed point precision
#  Method used: hashtables
#> Scores
#  @angle (in): the angle measure expressed in degrees
#  @p (in): the fixed point digits
#> Return data
#  sine value

# Convert angle
execute store result score ::in angle run function math:angle/deg_to_radf

# Return data
return run function math:sin2f
