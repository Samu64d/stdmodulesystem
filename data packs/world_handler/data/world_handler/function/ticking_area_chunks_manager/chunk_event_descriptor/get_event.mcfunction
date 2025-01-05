#
# world_handler:ticking_area_chunks_manager/chunk_event_descriptor/get_event
#
# Get the chunk event id of a chunk event descriptor
#> Storage
#  @chunk_event_descriptor (in): the chunk event descriptor
#> Return data
#  chunk event id

return run data get storage io: chunk_event_descriptor.event 1.0
