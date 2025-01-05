#
# world_handler:forceloaded_chunks_manager/cache/wipe_all
#

# Clear static data
data remove storage world_handler:static forceloaded_chunks_manager
data modify storage world_handler:static forceloaded_chunks_manager set value {}

# Clear volatile data
data remove storage world_handler:volatile forceloaded_chunks_manager
data modify storage world_handler:volatile forceloaded_chunks_manager set value {}
