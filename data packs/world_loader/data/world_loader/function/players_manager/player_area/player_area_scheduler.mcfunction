#
# world_loader:players_manager/player_area/player_area_scheduler
#

# Calculate ticking area properties
function world_loader:players_manager/common/calc_player_ticking_area_props

# Create a new ticking area handler
scoreboard players operation ::in center_x = ::out center_x
scoreboard players operation ::in center_z = ::out center_z
scoreboard players operation ::in size = ::out size
scoreboard players operation ::in forceloaded = ::const TRUE
function world_handler:ticking_areas_manager/api/create
