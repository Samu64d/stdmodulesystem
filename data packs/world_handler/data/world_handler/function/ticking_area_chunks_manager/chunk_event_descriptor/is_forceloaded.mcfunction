#
# world_handler:ticking_area_chunks_manager/chunk_event_descriptor/is_forceloaded
#
# Check if a chunk event is forceloaded
#> Storage
#  @chunk_event_descriptor (in): the chunk event descriptor
#> Return data
#  boolean flag

return run data get storage io: chunk_event_descriptor.forceloaded 1.0
