#
# world_handler:chunk_scheduling/scheduled_chunk_descriptor/get_chunk
#
# Get the chunk descriptor of a scheduled chunk descriptor
#> Storage
#  @scheduled_chunk_descriptor (in): the scheduled chunk descriptor
#  @chunk_descriptor (out): the chunk descriptor
#> Return void

data modify storage io: chunk_descriptor set from storage io: scheduled_chunk_descriptor.chunk
