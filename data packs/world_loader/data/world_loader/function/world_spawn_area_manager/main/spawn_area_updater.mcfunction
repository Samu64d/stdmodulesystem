#
# world_loader:world_spawn_area_manager/main/spawn_area_updater
#

# Get the spawn area uuid
data modify storage io: world_spawn_area_descriptor set from storage world_loader:volatile world_spawn_area_manager.spawn_area
function world_loader:world_spawn_area_manager/world_spawn_area_descriptor/get_ticking_area

# Calculate ticking area properties
function world_loader:world_spawn_area_manager/common/calc_spawn_area_props

# Update the ticking area
scoreboard players operation ::in center_x = ::out center_x
scoreboard players operation ::in center_z = ::out center_z
scoreboard players operation ::in size = ::out size
data modify storage io: uuid set from storage io: ticking_area_uuid
function world_handler:ticking_areas_manager/api/update
