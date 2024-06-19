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

# Set x
function minecraft_world_api:chunk_pos/set_x

# Set z
function minecraft_world_api:chunk_pos/set_z
