#
# world_handler:forceloaded_chunks_manager/cache/wipe_data
#

# Clear data
data remove storage world_handler:data forceloaded_chunks_manager
data modify storage world_handler:data forceloaded_chunks_manager set value {}
