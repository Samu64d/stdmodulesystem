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

# Set x
function minecraft_world_api:block_pos/set_x

# Set y
function minecraft_world_api:block_pos/set_y

# Set z
function minecraft_world_api:block_pos/set_z
