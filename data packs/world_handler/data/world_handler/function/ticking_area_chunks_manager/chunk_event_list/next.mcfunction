#
# world_handler:ticking_area_chunks_manager/chunk_event_list/next
#
# Get and remove the first chunk event descriptor from the chunk event list
#> Storage
#  @chunk_event_descriptor (out): the chunk event descriptor
#> Return void

data modify storage io: list_ref set value "storage world_handler:data ticking_area_chunks_manager.chunk_event_list"
function collections:referenced_list/remove_first
data modify storage io: chunk_event_descriptor set from storage io: element
