#
# minecraft_world_api:cache/wipe_data
#

# Clear data
data remove storage minecraft_world_api:data {}
data modify storage minecraft_world_api:data {} set value {}

function minecraft_world_api:worldborder/cache/wipe_data
