#
# world_handler:cache/wipe_data
#

# Clear data
data remove storage world_handler:data {}
data modify storage world_handler:data {} set value {}

function world_handler:chunk_manager/cache/wipe_data
function world_handler:forceloaded_chunks_manager/cache/wipe_data
function world_handler:ticking_area_chunks_manager/cache/wipe_data
function world_handler:ticking_areas_manager/cache/wipe_data
function world_handler:world_spawn_manager/cache/wipe_data
