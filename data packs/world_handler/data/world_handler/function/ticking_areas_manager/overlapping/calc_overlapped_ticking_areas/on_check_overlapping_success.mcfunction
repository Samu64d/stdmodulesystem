#
# world_handler:ticking_areas_manager/overlapping/calc_overlapped_ticking_areas/on_check_overlapping_success
#

# Get ticking area uuid
data modify storage io: ticking_area_descriptor set from storage io: ticking_area_descriptor0
function world_handler:ticking_areas_manager/ticking_area_descriptor/get_uuid

# Add to the list
data modify storage io: list_ref set value "storage io: ticking_area_uuid_list"
data modify storage io: element_ref set value "storage io: uuid"
function collections:referenced_list/add_last
