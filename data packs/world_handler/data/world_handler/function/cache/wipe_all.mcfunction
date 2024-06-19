#
# world_handler:cache/wipe_all
#

# Clear static data
data remove storage world_handler:static {}
data modify storage world_handler:static {} set value {}

# Clear volatile data
data remove storage world_handler:volatile {}
data modify storage world_handler:volatile {} set value {}

function world_handler:chunk_manager/cache/wipe_all
function world_handler:chunk_scheduling/cache/wipe_all
function world_handler:forceloaded_chunks_manager/cache/wipe_all
function world_handler:ticking_area_chunks_manager/cache/wipe_all
function world_handler:ticking_areas_manager/cache/wipe_all
function world_handler:world_spawn_manager/cache/wipe_all
