#
# world_handler:world_spawn_manager/api/get_block_pos
#
# Get the world spawn block position
#> Storage
#  @block_pos (out): the block position
#> Context
#  @position (in): the server root position
#> Return void

# Get position
function context:get_position

# Create block position
data modify storage io: vector set from storage io: position
function minecraft_world_api:block_pos/new_from_vector3d
