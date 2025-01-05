#
# world_handler:ticking_area_chunks_manager/chunk_event_list/add
#
# Add a chunk event descriptor to the chunk event list
#> Storage
#  @chunk_event_descriptor (in): the chunk event descriptor
#> Return void

data modify storage io: list_ref set value "storage world_handler:data ticking_area_chunks_manager.chunk_event_list"
data modify storage io: element_ref set value "storage io: chunk_event_descriptor"
function collections:referenced_list/add_last
