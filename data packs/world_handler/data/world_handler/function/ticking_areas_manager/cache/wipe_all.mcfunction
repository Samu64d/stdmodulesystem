#
# world_handler:ticking_areas_manager/cache/wipe_all
#

# Clear static data
data remove storage world_handler:static ticking_areas_manager
data modify storage world_handler:static ticking_areas_manager set value {}

# Clear volatile data
data remove storage world_handler:volatile ticking_areas_manager
data modify storage world_handler:volatile ticking_areas_manager set value {}
