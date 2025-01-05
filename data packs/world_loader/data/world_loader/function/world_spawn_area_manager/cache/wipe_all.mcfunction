#
# world_loader:world_spawn_area_manager/cache/wipe_all
#

# Clear static data
data remove storage world_loader:static world_spawn_area_manager
data modify storage world_loader:static world_spawn_area_manager set value {}

# Clear volatile data
data remove storage world_loader:volatile world_spawn_area_manager
data modify storage world_loader:volatile world_spawn_area_manager set value {}
