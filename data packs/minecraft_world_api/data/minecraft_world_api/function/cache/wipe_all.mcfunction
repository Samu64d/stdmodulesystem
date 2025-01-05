#
# minecraft_world_api:cache/wipe_all
#

# Clear static data
data remove storage minecraft_world_api:static {}
data modify storage minecraft_world_api:static {} set value {}

# Clear volatile data
data remove storage minecraft_world_api:volatile {}
data modify storage minecraft_world_api:volatile {} set value {}

function minecraft_world_api:block/cache/wipe_all
function minecraft_world_api:worldborder/cache/wipe_all
