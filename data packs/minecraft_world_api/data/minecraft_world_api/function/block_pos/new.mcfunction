#
# minecraft_world_api:block_pos/new
#
# Create a new block position
#> Scores
#  @x (in): the x value
#  @y (in): the y value
#  @z (in): the z value
#> Storage
#  @block_pos (out): the block position
#> Return void

# Create object
data modify storage io: block_pos set value {x: 0, y: 0, z: 0}

# Set values

# X
execute store result storage io: block_pos.x int 1.0 run scoreboard players get ::in x

# Y
execute store result storage io: block_pos.y int 1.0 run scoreboard players get ::in y

# Z
execute store result storage io: block_pos.z int 1.0 run scoreboard players get ::in z
