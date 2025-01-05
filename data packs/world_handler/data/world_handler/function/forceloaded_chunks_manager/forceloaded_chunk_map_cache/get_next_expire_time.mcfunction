#
# world_handler:forceloaded_chunks_manager/forceloaded_chunk_map_cache/get_next_expire_time
#
# Get the expire time of the forceloaded chunk that expire first in the forceloaded chunk map
#> Return data
#  expire time

scoreboard players set ::world_handler::forceloaded_chunks_manager expire_time -1
execute if data storage world_handler:data forceloaded_chunks_manager.forceloaded_chunk_map_cache.next_expire_time store result score ::world_handler::forceloaded_chunks_manager expire_time run data get storage world_handler:data forceloaded_chunks_manager.forceloaded_chunk_map_cache.next_expire_time 1.0

# Return data
return run scoreboard players get ::world_handler::forceloaded_chunks_manager expire_time
