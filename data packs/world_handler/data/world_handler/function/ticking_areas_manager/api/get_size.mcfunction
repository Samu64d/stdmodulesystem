#
# world_handler:ticking_areas_manager/api/get_size
#
# Get the size of a ticking area
#> Storage
#  @uuid (in): the ticking area uuid
#> Return data
#  size value

# Get the ticking area descriptor
function world_handler:ticking_areas_manager/ticking_area_list/get_by_uuid

# Get size
return run function world_handler:ticking_areas_manager/ticking_area_descriptor/get_size
