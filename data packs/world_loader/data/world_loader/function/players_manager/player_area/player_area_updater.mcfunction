#
# world_loader:players_manager/player_area/player_area_updater
#

# Get player uuid
function world_loader:players_manager/handled_player_descriptor/get_player_uuid

# Get ticking area uuid
function world_loader:players_manager/handled_player_descriptor/get_ticking_area_uuid

# Calculate new ticking area properties
data modify storage io: uuid set from storage io: player_uuid
function world_loader:players_manager/common/calc_player_ticking_area_props

# Update the ticking area properties

data modify storage io: uuid set from storage io: ticking_area_uuid

# Size
scoreboard players operation ::in size = ::out size

# Center
scoreboard players operation ::in center_x = ::out center_x
scoreboard players operation ::in center_z = ::out center_z

# Update
function world_handler:ticking_areas_manager/api/update
