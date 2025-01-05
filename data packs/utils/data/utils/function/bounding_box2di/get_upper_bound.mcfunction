#
# utils:bounding_box2di/get_upper_bound
#
# Get the upper bound of a bounding box
#> Scores
#  @x (out): upper bound x value
#  @z (out): upper bound z value
#> Storage
#  @bounding_box (in): the bounding box
#> Return void

execute store result score ::out x run data get storage io: bounding_box.x1 1.0
execute store result score ::out z run data get storage io: bounding_box.z1 1.0
