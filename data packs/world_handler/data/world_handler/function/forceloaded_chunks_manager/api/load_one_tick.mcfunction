#
# world_handler:forceloaded_chunks_manager/api/load_one_tick
#
# Forceload a chunk referenced by a chunk descriptor for a tick, return a boolean flag indicating success or failure
#> Scores
#  @persistent (in): boolean flag
#> Storage
#  @chunk_descriptor (in): the chunk descriptor
#> Return data
#  boolean flag

# Load the chunk for one tick
scoreboard players set ::in tick 1
return run function world_handler:forceloaded_chunks_manager/api/load_tick
