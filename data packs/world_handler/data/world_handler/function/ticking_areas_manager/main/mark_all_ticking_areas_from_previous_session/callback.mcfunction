#
# world_handler:ticking_areas_manager/main/mark_all_ticking_areas_from_previous_session/callback
#

# Set ticking area from previous session
scoreboard players operation ::in from_previous_session = ::const TRUE
function world_handler:ticking_areas_manager/ticking_area_descriptor/set_from_previous_session

# Get ticking area uuid
function world_handler:ticking_areas_manager/ticking_area_descriptor/get_uuid

# Update the ticking area descriptor from the ticking area list
function world_handler:ticking_areas_manager/ticking_area_list/update_by_uuid
