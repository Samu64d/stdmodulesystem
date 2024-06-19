#
# world_handler:chunk_scheduling/scheduled_chunk_descriptor/new
#
# Create a new scheduled chunk descriptor
#> Storage
#  @chunk_descriptor (in): the chunk descriptor
#  @scheduled_chunk_descriptor (out): the scheduled chunk descriptor
#> Return void

# Create object
data modify storage io: scheduled_chunk_descriptor set value {chunk: {}}

# Set chunk
data modify storage io: scheduled_chunk_descriptor.chunk set from storage io: chunk_descriptor
