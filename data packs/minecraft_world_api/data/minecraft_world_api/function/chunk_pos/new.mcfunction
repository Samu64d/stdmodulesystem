#
# minecraft_world_api:chunk_pos/new
#
# Create a new chunk position
#> Scores
#  @x (in): the x value
#  @z (in): the z value
#> Storage
#  @chunk_pos (out): the chunk position
#> Return void

# Create object
data modify storage io: chunk_pos set value {x: 0, z: 0}

# Set values

# X
execute store result storage io: chunk_pos.x int 1.0 run scoreboard players get ::in x

# Z
execute store result storage io: chunk_pos.z int 1.0 run scoreboard players get ::in z
