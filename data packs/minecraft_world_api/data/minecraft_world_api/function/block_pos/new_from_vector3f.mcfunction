#
# minecraft_world_api:block_pos/new_from_vector3f
#
# Create a new block position from a float 3d vector
#> Storage
#  @vector (in): the vector
#  @block_pos (out): the block position
#> Return void

# Create object
data modify storage io: block_pos set value {x: 0, y: 0, z: 0}

# Set values

# X
function nmath:vector3f/get_x
execute store result storage io: block_pos.x int 1.0 run data get storage io: x 1.0

# Y
function nmath:vector3f/get_y
execute store result storage io: block_pos.y int 1.0 run data get storage io: y 1.0

# Z
function nmath:vector3f/get_z
execute store result storage io: block_pos.z int 1.0 run data get storage io: z 1.0
