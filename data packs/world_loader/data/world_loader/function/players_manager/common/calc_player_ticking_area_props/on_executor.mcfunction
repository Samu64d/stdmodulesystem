#
# world_loader:players_manager/common/calc_player_ticking_area_props/on_executor
#

# Get the player dimension
function minecraft_entity_api:entity/get_dimension

# Get the player block position
function minecraft_entity_api:entity/get_block_pos

# Get the chunk position of the chunk in which the player is located
function minecraft_world_api:chunk/pos/get_chunk_pos_from_block_pos

# Set the ticking area properties

# Center
execute store result score ::out center_x run function minecraft_world_api:chunk_pos/get_x
execute store result score ::out center_z run function minecraft_world_api:chunk_pos/get_z

# Size
scoreboard players operation ::out size = ::world_loader::const PLAYER_AREA_SIZE
