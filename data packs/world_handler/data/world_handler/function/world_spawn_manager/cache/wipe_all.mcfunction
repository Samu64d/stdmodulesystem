#
# world_handler:world_spawn_manager/cache/wipe_all
#

# Clear static data
data remove storage world_handler:static world_spawn_manager
data modify storage world_handler:static world_spawn_manager set value {}

# Clear volatile data
data remove storage world_handler:volatile world_spawn_manager
data modify storage world_handler:volatile world_spawn_manager set value {}
