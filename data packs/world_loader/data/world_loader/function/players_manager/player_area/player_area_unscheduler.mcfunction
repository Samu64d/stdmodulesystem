#
# world_loader:players_manager/player_area/player_area_unscheduler
#

# Get the ticking area uuid
function world_loader:players_manager/handled_player_descriptor/get_ticking_area_uuid

# Remove the ticking area
data modify storage io: uuid set from storage io: ticking_area_uuid
function world_handler:ticking_areas_manager/api/remove
