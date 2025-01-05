#
# context:get_block_pos
#
# Get the block position of the context position
#> Storage
#  @block_pos (out): the context block position
#> Context
#  @position (in): the position
#> Return void

# Get position
function context:get_position

# Cast to block position
data modify storage io: vector set from storage io: position
function minecraft_world_api:block_pos/new_from_vector3d
