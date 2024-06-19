#
# minecraft_world_api:block/utils/cache/wipe_all
#

# Clear static data
data remove storage mineweather:static block.utils
data modify storage mineweather:static block.utils set value {}

# Clear volatile data
data remove storage mineweather:volatile block.utils
data modify storage mineweather:volatile block.utils set value {}
