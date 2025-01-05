#
# world_handler:ticking_area_chunks_manager/chunk_event_list/empty
#
# Empty the chunk event list
#> Return void

data modify storage io: list_ref set value "storage world_handler:data ticking_area_chunks_manager.chunk_event_list"
function collections:referenced_list/empty
