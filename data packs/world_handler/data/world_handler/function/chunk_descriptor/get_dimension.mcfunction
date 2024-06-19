#
# world_handler:chunk_descriptor/get_dimension
#
# Get the chunk dimension
#> Storage
#  @chunk_descriptor (in): the chunk descriptor
#  @dimension (out): chunk dimension
#> Return void

data modify storage io: dimension set from storage io: chunk_descriptor.dimension
