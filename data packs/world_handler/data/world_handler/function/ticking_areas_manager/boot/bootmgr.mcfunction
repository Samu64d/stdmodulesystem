#
# world_handler:ticking_areas_manager/boot/bootmgr
#

# Check for uninitialized ticking area list
execute unless function world_handler:ticking_areas_manager/ticking_area_list/is_initialized run function world_handler:ticking_areas_manager/ticking_area_list/empty
