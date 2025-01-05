#
# world_handler:forceloaded_chunks_manager/forceloaded_chunk_map_cache/update_next_expire_time
#
# Update the expire time of the forceloaded chunk that expire first in the forceloaded chunk map
#> Scores
#  @expire_time (in): the expire time
#  @revalidate (in): boolean flag
#> Return void

# Get expire time
execute store result score ::world_handler::forceloaded_chunks_manager expire_time run function world_handler:forceloaded_chunks_manager/forceloaded_chunk_map_cache/get_next_expire_time

# Check for values

# Set a new value
execute unless score ::in expire_time matches -1 if score ::in expire_time < ::world_handler::forceloaded_chunks_manager expire_time run function world_handler:forceloaded_chunks_manager/forceloaded_chunk_map_cache/internal/set_next_expire_time
execute if score ::world_handler::forceloaded_chunks_manager expire_time matches -1 run function world_handler:forceloaded_chunks_manager/forceloaded_chunk_map_cache/internal/set_next_expire_time

# Revalidate cache
execute if score ::world_handler::forceloaded_chunks_manager expire_time matches -2 if score ::in revalidate = ::const TRUE run function world_handler:forceloaded_chunks_manager/forceloaded_chunk_map_cache/internal/set_next_expire_time
