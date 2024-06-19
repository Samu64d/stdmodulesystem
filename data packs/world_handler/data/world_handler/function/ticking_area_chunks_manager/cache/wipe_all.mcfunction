#
# world_handler:ticking_area_chunks_manager/cache/wipe_all
#

# Clear static data
data remove storage world_handler:static ticking_area_chunks_manager
data modify storage world_handler:static ticking_area_chunks_manager set value {}

# Clear volatile data
data remove storage world_handler:volatile ticking_area_chunks_manager
data modify storage world_handler:volatile ticking_area_chunks_manager set value {}
