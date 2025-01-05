#
# world_loader:world_spawn_area_manager/main/spawn_area_unscheduler
#

# Get the spawn area uuid
data modify storage io: world_spawn_area_descriptor set from storage world_loader:volatile world_spawn_area_manager.spawn_area
function world_loader:world_spawn_area_manager/world_spawn_area_descriptor/get_ticking_area

# Remove the ticking area
data modify storage io: uuid set from storage io: ticking_area_uuid
function world_handler:ticking_areas_manager/api/remove
