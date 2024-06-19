#
# world_handler:forceloaded_chunks_manager/api/load_tick
#
# Forceload a chunk referenced by a chunk descriptor for an amount of ticks, return a boolean flag indicating success or failure
#> Scores
#  @tick (in): the tick amount
#  @persistent (in): boolean flag
#> Storage
#  @chunk_descriptor (in): the chunk descriptor
#> Return data
#  boolean flag

# Check if the chunk is already loaded
execute store result score ::world_handler::forceloaded_chunks_manager is_loaded run function world_handler:forceloaded_chunks_manager/api/is_loaded

# Unload the chunk
execute if score ::world_handler::forceloaded_chunks_manager is_loaded = ::const TRUE run function world_handler:forceloaded_chunks_manager/loading/unload

# Create the forceloaded chunk descriptor
function world_handler:forceloaded_chunks_manager/forceloaded_chunk_descriptor/new

# Load the chunk
return run function world_handler:forceloaded_chunks_manager/loading/load
