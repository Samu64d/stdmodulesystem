#
# minecraft_world_api:block/cache/wipe_all
#

# Clear static data
data remove storage mineweather:static block
data modify storage mineweather:static block set value {}

# Clear volatile data
data remove storage mineweather:volatile block
data modify storage mineweather:volatile block set value {}

function minecraft_world_api:block/utils/cache/wipe_all
