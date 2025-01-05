#
# world_handler:loading/is_chunk_loaded
#
# Check if a chunk matching a chunk descriptor is loaded
#> Storage
#  @chunk_descriptor (in): the chunk descriptor
#> Return data
#  boolean flag

# Get dimension
function world_handler:chunk_descriptor/get_dimension

# Get chunk position
function world_handler:chunk_descriptor/get_chunk_pos

# Check if the chunk is loaded
return run function minecraft_world_api:chunk/api/is_loaded
