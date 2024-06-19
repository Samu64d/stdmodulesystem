#
# world_handler:forceloaded_chunks_manager/forceloaded_chunk_map_cache/internal/set_next_expire_time
#
# Set the expire time of the forceloaded chunk that expire first in the forceloaded chunk map
#> Scores
#  @expire_time (in): the expire time
#> Return void

execute store result storage world_handler:data forceloaded_chunks_manager.forceloaded_chunk_map_cache.next_expire_time int 1.0 run scoreboard players get ::in expire_time
