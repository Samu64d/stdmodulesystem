#
# world_loader:world_spawn_area_manager/main/main
#

# Check if the spawn area is not active
data modify storage io: world_spawn_area_descriptor set from storage world_loader:volatile world_spawn_area_manager.spawn_area
execute store result score ::world_loader::world_spawn_area_manager active run function world_loader:world_spawn_area_manager/world_spawn_area_descriptor/is_active

# Create the spawn area
execute if score ::world_loader::const ENABLE_SPAWN_TICKING_AREA = ::const TRUE if score ::world_loader::world_spawn_area_manager active = ::const FALSE run function world_loader:world_spawn_area_manager/main/prepare_spawn_area

# Update the spawn area
execute if score ::world_loader::world_spawn_area_manager active = ::const TRUE run function world_loader:world_spawn_area_manager/main/spawn_area_updater
