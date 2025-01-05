#
# world_handler:ticking_area_chunks_manager/chunk_event_list/get_count
#
# Get the count of chunk event descriptors inside the chunk event list
#> Return data
#  chunk event descriptor count

data modify storage io: list_ref set value "storage world_handler:data ticking_area_chunks_manager.chunk_event_list"
return run function collections:referenced_list/get_length
