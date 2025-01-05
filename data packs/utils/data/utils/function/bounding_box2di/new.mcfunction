#
# utils:bounding_box2di/new
#
# Create a new bounding box
#> Scores
#  @x0 (in): lower bound x value
#  @z0 (in): lower bound z value
#  @x1 (in): upper bound x value
#  @z1 (in): upper bound z value
#> Storage
#  @bounding_box (out): the bounding box
#> Return void

# Create object
data modify storage io: bounding_box set value {x0: 0, z0: 0, x1: 0, z1: 0}

# Set lower bound
execute store result storage io: bounding_box.x0 int 1.0 run scoreboard players get ::in x0
execute store result storage io: bounding_box.z0 int 1.0 run scoreboard players get ::in z0

# Set upper bound
execute store result storage io: bounding_box.x1 int 1.0 run scoreboard players get ::in x1
execute store result storage io: bounding_box.z1 int 1.0 run scoreboard players get ::in z1
