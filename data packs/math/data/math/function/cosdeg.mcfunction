#
# math:cosdeg
#
# Get the cosine value of a given angle in degrees with fixed point precision
#  Method used: hashtables
#> Scores
#  @angle (in): the angle measure expressed in degrees
#> Return data
#  cosine value

# Convert angle
execute store result score ::in angle run function math:angle/deg_to_rad

# Return data
return run function math:cos2
