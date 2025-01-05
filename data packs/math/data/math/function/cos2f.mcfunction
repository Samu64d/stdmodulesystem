#
# math:cos2f
#
# Get the cosine value of a given angle in radians with arbitrary fixed point precision
#  Method used: hashtables
#> Scores
#  @angle (in): the angle measure expressed in radians
#  @p (in): the fixed point digits
#> Return data
#  cosine value

scoreboard players operation ::math p = ::in p

# Limit range
scoreboard players operation ::math angle = ::in angle
function math:sin2f_cos2f/limit_range

# Rescale input
scoreboard players operation ::in value = ::math angle
scoreboard players operation ::in p = ::math p
execute store result score ::in angle run function math:hashtables/scaling/scale_input

# Calculate
function math:hashtables/functions/cos

# Rescale output
scoreboard players operation ::in value = ::out cos
scoreboard players operation ::in p = ::math p
execute store result score ::math cos run function math:hashtables/scaling/scale_output

# Return data
return run scoreboard players get ::math cos
