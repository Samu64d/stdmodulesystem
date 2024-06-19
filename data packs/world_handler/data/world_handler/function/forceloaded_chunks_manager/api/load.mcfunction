#
# world_handler:forceloaded_chunks_manager/api/load
#
# Forceload a chunk referenced by a chunk descriptor forever, return a boolean flag indicating success or failure
#> Scores
#  @persistent (in): boolean flag
#> Storage
#  @chunk_descriptor (in): the chunk descriptor
#> Return data
#  boolean flag

# Load the chunk forever
scoreboard players set ::in tick -1
return run function world_handler:forceloaded_chunks_manager/api/load_tick
