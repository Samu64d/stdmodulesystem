#
# world_handler:forceload/load
#
# Forceload a chunk referenced by a chunk descriptor, return a boolean flag indicating success or failure
#> Storage
#  @chunk_descriptor (in): the chunk descriptor
#> Return data
#  boolean flag

# Get dimension
function world_handler:chunk_descriptor/get_dimension

# Create chunk position
function world_handler:chunk_descriptor/get_chunk_pos

# Load the chunk
return run function minecraft_world_api:chunk/forceloading/load
