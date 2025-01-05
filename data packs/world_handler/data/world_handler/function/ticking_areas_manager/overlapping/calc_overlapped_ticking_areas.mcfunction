#
# world_handler:ticking_areas_manager/overlapping/calc_overlapped_ticking_areas
#
# Calculate the list of the ticking areas overlapped to a ticking area
#> Storage
#  @ticking_area_descriptor (in): the ticking area descriptor
#  @ticking_area_uuid_list (out): the overlapped ticking area uuid list
#> Return void

# Copy data
data modify storage world_handler:volatile ticking_areas_manager.temp_ticking_area_descriptor set from storage io: ticking_area_descriptor

# Create a new list
data modify storage io: list_ref set value "storage io: ticking_area_uuid_list"
function collections:referenced_list/new

# Iterate through the ticking area list
data modify storage io: callback set value "world_handler:ticking_areas_manager/overlapping/calc_overlapped_ticking_areas/callback"
function world_handler:ticking_areas_manager/ticking_area_list/for_each
