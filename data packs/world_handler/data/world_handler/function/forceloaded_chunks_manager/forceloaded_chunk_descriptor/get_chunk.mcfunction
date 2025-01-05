#
# world_handler:forceloaded_chunks_manager/forceloaded_chunk_descriptor/get_chunk
#
# Get the chunk descriptor of a forceloaded chunk descriptor
#> Storage
#  @forceloaded_chunk_descriptor (in): the forceloaded chunk descriptor
#  @chunk_descriptor (out): chunk descriptor
#> Return void

data modify storage io: chunk_descriptor set from storage io: forceloaded_chunk_descriptor.chunk
