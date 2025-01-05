#
# minecraft_world_api:chunk_pos/new_from_vector2d
#
# Create a new chunk position from a double 2d vector
#> Storage
#  @vector (in): the vector
#  @chunk_pos (out): the chunk position
#> Return void

# Create object
data modify storage io: chunk_pos set value {x: 0, z: 0}

# Set values

# X
function nmath:vector2d/get_x
execute store result storage io: chunk_pos.x int 1.0 run data get storage io: x 1.0

# Z
function nmath:vector2d/get_y
execute store result storage io: chunk_pos.z int 1.0 run data get storage io: y 1.0
