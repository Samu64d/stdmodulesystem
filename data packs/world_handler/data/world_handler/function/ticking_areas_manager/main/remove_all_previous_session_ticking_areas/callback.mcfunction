#
# world_handler:ticking_areas_manager/main/remove_all_previous_session_ticking_areas/callback
#

# Return if it's not from previous session
execute unless function world_handler:ticking_areas_manager/ticking_area_descriptor/is_from_previous_session run return 0

# Get ticking area uuid
function world_handler:ticking_areas_manager/ticking_area_descriptor/get_uuid

# Remove ticking area
function world_handler:ticking_areas_manager/main/remove_ticking_area
