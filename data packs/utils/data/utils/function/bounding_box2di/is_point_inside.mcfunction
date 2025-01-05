#
# utils:bounding_box2di/is_point_inside
#
# Check if a point is inside a bounding box
#> Scores
#  @x (in): point x value
#  @z (in): point z value
#> Storage
#  @bounding_box (in): the bounding box
#> Return data
#  boolean flag

scoreboard players operation ::utils::bounding_box2di is_point_inside = ::const FALSE

# Get first bounding box bounds
function utils:bounding_box2di/get_bounds

# Check overlapping using AABB
execute if score ::in x >= ::out x0 if score ::in x <= ::out x1 if score ::in z >= ::out z0 if score ::in z <= ::out z1 run scoreboard players operation ::utils::bounding_box2di is_point_inside = ::const TRUE

# Return data
return run scoreboard players get ::utils::bounding_box2di is_point_inside
