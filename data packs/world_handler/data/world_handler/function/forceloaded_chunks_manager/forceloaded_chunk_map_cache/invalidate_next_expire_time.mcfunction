#
# world_handler:forceloaded_chunks_manager/forceloaded_chunk_map_cache/invalidate_next_expire_time
#
# Invalidate the expire time of the forceloaded chunk that expire first in the forceloaded chunk map
#> Return void

data modify storage world_handler:data forceloaded_chunks_manager.forceloaded_chunk_map_cache.next_expire_time set value -2
