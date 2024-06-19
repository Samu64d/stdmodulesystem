#
# world_loader:world_spawn_area_manager/main/prepare_spawn_area
#

# Create ticking area
function world_loader:world_spawn_area_manager/main/spawn_area_scheduler

# Update the state
data modify storage io: world_spawn_area_descriptor set from storage world_loader:volatile world_spawn_area_manager.spawn_area
data modify storage io: ticking_area_uuid set from storage io: uuid
function world_loader:world_spawn_area_manager/world_spawn_area_descriptor/set_ticking_area
scoreboard players operation ::in active = ::const TRUE
function world_loader:world_spawn_area_manager/world_spawn_area_descriptor/set_active
data modify storage world_loader:volatile world_spawn_area_manager.spawn_area set from storage io: world_spawn_area_descriptor
