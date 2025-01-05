#
# world_handler:forceloaded_chunks_manager/loading/unload_expired
#

# Get game time
execute store result score ::world_handler::forceloaded_chunks_manager game_time run function time:mc_time/get_game_time

# Check for next expire time
execute store result score ::world_handler::forceloaded_chunks_manager expire_time run function world_handler:forceloaded_chunks_manager/forceloaded_chunk_map_cache/get_next_expire_time

# Check if there are expired chunks or if the cache is invalid
scoreboard players operation ::world_handler::forceloaded_chunks_manager need_scan = ::const FALSE
execute unless score ::world_handler::forceloaded_chunks_manager expire_time matches -1 if score ::world_handler::forceloaded_chunks_manager expire_time <= ::world_handler::forceloaded_chunks_manager game_time run scoreboard players operation ::world_handler::forceloaded_chunks_manager need_scan = ::const TRUE
execute if score ::world_handler::forceloaded_chunks_manager expire_time matches -2 run scoreboard players operation ::world_handler::forceloaded_chunks_manager need_scan = ::const TRUE

# New expire time
scoreboard players set ::world_handler::forceloaded_chunks_manager new_expire_time -1

# Iterate through the forceloaded chunk map
data modify storage io: callback set value "world_handler:forceloaded_chunks_manager/loading/unload_expired/callback"
execute if score ::world_handler::forceloaded_chunks_manager need_scan = ::const TRUE run function world_handler:forceloaded_chunks_manager/forceloaded_chunk_map/for_each

# Update cache
scoreboard players operation ::in expire_time = ::world_handler::forceloaded_chunks_manager new_expire_time
scoreboard players operation ::in revalidate = ::const TRUE
execute if score ::world_handler::forceloaded_chunks_manager need_scan = ::const TRUE run function world_handler:forceloaded_chunks_manager/forceloaded_chunk_map_cache/update_next_expire_time
