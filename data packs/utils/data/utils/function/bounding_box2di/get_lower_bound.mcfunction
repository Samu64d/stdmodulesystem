#
# utils:bounding_box2di/get_lower_bound
#
# Get the lower bound of a bounding box
#> Scores
#  @x (out): lower bound x value
#  @z (out): lower bound z value
#> Storage
#  @bounding_box (in): the bounding box
#> Return void

execute store result score ::out x run data get storage io: bounding_box.x0 1.0
execute store result score ::out z run data get storage io: bounding_box.z0 1.0
