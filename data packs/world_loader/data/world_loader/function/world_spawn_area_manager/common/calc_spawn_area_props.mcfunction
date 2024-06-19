#
# world_loader:world_spawn_area_manager/common/calc_spawn_area_props
#

# Get world spawn dimension
function world_handler:world_spawn_manager/api/get_dimension

# Get world spawn position
function world_handler:world_spawn_manager/api/get_block_pos

# Get the chunk position of the chunk in which the world spawn is located
function minecraft_world_api:chunk/pos/get_chunk_pos_from_block_pos

# Set the ticking area properties

# Center
execute store result score ::out center_x run function minecraft_world_api:chunk_pos/get_x
execute store result score ::out center_z run function minecraft_world_api:chunk_pos/get_z

# Size
execute store result score ::out size run gamerule spawnChunkRadius
