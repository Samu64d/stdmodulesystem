#
# world_handler:chunk_descriptor/get_chunk_pos
#
# Get the chunk position
#> Storage
#  @chunk_descriptor (in): the chunk descriptor
#  @chunk_pos (out): the chunk position
#> Return void

# X
execute store result score ::in x run data get storage io: chunk_descriptor.pos[0] 1.0

# Z
execute store result score ::in z run data get storage io: chunk_descriptor.pos[1] 1.0

# Create the chunk position
function minecraft_world_api:chunk_pos/new
