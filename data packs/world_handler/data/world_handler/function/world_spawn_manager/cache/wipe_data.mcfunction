#
# world_handler:world_spawn_manager/cache/wipe_data
#

# Clear data
data remove storage world_handler:data world_spawn_manager
data modify storage world_handler:data world_spawn_manager set value {}
