#
# world_handler:ticking_area_chunks_manager/chunk_event_descriptor/get_chunk
#
# Get the chunk descriptor of a chunk event descriptor
#> Storage
#  @chunk_event_descriptor (in): the chunk event descriptor
#  @chunk_descriptor (out): the chunk descriptor
#> Return void

data modify storage io: chunk_descriptor set from storage io: chunk_event_descriptor.chunk
