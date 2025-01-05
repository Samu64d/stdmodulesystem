#
# minecraft_world_api:layout/cache/wipe_all
#

# Clear static data
data remove storage mineweather:static layout
data modify storage mineweather:static layout set value {}

# Clear volatile data
data remove storage mineweather:volatile layout
data modify storage mineweather:volatile layout set value {}
