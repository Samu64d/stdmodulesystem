#
# world_handler:chunk_descriptor/set_dimension
#
# Set the chunk dimension
#> Storage
#  @dimension (in): the chunk dimension
#  @chunk_descriptor (inout): the chunk descriptor
#> Return void

data modify storage io: chunk_descriptor.dimension set from storage io: dimension
