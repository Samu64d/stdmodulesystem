#
# world_handler:forceloaded_chunks_manager/forceloaded_chunk_descriptor/is_expired
#
# Check if a forceloaded chunk descriptor is expired
#> Storage
#  @forceloaded_chunk_descriptor (in): the forceloaded chunk descriptor
#> Return data
#  boolean flag

# Get expire time
execute store result score ::world_handler::forceloaded_chunks_manager temp0 run function world_handler:forceloaded_chunks_manager/forceloaded_chunk_descriptor/get_expire_time

# Check for never expire
execute if score ::world_handler::forceloaded_chunks_manager temp0 matches -1 run return run scoreboard players get ::const FALSE

# Get game time
execute store result score ::world_handler::forceloaded_chunks_manager temp1 run function time:mc_time/get_game_time

# Check values
execute store success score ::world_handler::forceloaded_chunks_manager is_expired if score ::world_handler::forceloaded_chunks_manager temp0 <= ::world_handler::forceloaded_chunks_manager temp1

# Return data
return run scoreboard players get ::world_handler::forceloaded_chunks_manager is_expired
