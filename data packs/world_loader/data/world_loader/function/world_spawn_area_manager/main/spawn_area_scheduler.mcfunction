#
# world_loader:world_spawn_area_manager/main/spawn_area_scheduler
#

# Calculate ticking area properties
function world_loader:world_spawn_area_manager/common/calc_spawn_area_props

# Create a new ticking area
scoreboard players operation ::in center_x = ::out center_x
scoreboard players operation ::in center_z = ::out center_z
scoreboard players operation ::in size = ::out size
scoreboard players operation ::in forceloaded = ::const TRUE
function world_handler:ticking_areas_manager/api/create
