#
# world_loader:players_manager/player/handle_player
#

data modify storage io: player_uuid set from storage io: uuid

# Create a new ticking area
function world_loader:players_manager/player_area/player_area_scheduler

# Create a new player handler
data modify storage io: ticking_area_uuid set from storage io: uuid
function world_loader:players_manager/handled_player_descriptor/new

# Add to the player handler list
function world_loader:players_manager/handled_player_list/add
