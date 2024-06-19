#
# world_handler:forceload/is_loaded
#
# Check if a chunk referenced by a chunk descriptor is forceloaded
#> Storage
#  @dimension (in): the dimension
#> Return data
#  boolean flag

# Get dimension
function world_handler:chunk_descriptor/get_dimension

# Create chunk position
function world_handler:chunk_descriptor/get_chunk_pos

# Check if the chunk it's loaded
return run function minecraft_world_api:chunk/forceloading/is_loaded
