#
# minecraft_world_api:worldborder/cache/wipe_all
#

# Clear static data
data remove storage minecraft_world_api:static worldborder
data modify storage minecraft_world_api:static worldborder set value {}

# Clear volatile data
data remove storage minecraft_world_api:volatile worldborder
data modify storage minecraft_world_api:volatile worldborder set value {}
