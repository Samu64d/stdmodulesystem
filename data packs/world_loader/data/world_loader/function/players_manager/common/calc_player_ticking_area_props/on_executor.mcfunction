#
# world_loader:players_manager/common/calc_player_ticking_area_props/on_executor
#

# Get the player dimension
function server:player_entity/get_dimension

# Get the player position
function server:player_entity/get_block_pos

# Get the chunk position of the chunk in which the player is located
function minecraft_world_api:chunk/pos/get_chunk_pos_from_block_pos

# Calculate the player ticking distance
#function world_loader:player/calc_ticking_chunk_distance

# Set the ticking area properties

# Center
execute store result score ::out center_x run function minecraft_world_api:chunk_pos/get_x
execute store result score ::out center_z run function minecraft_world_api:chunk_pos/get_z

# Size
scoreboard players operation ::out size = ::world_loader::const PLAYER_AREA_SIZE
