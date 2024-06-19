#
# world_handler:chunk_manager/loaded_chunk_descriptor/get_chunk
#
# Get the chunk descriptor of a loaded chunk descriptor
#> Storage
#  @loaded_chunk_descriptor (in): the loaded chunk descriptor
#  @chunk_descriptor (out): chunk descriptor
#> Return void

data modify storage io: chunk_descriptor set from storage io: loaded_chunk_descriptor.chunk
