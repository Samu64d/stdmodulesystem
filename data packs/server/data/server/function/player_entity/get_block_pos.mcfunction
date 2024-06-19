#
# server:player_entity/get_block_pos
#
# Get the block positon of a player entity
#> Storage
#  @block_pos (out): the block position
#> Context
#  @executor (in): the player entity
#> Return void

data modify storage io: array set from entity @s Pos
function minecraft_world_api:block_pos/new_from_array
