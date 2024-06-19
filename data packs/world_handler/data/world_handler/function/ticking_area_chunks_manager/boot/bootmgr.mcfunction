#
# world_handler:ticking_area_chunks_manager/boot/bootmgr
#

# Check for uninitialized chunk event list
execute unless function world_handler:ticking_area_chunks_manager/chunk_event_list/is_initialized run function world_handler:ticking_area_chunks_manager/chunk_event_list/empty
