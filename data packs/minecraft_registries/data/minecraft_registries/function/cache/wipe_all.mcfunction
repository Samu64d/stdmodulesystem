#
# minecraft_registries:cache/wipe_all
#

# Clear static data
data remove storage minecraft_registries:static {}
data modify storage minecraft_registries:static {} set value {}

# Clear volatile data
data remove storage minecraft_registries:volatile {}
data modify storage minecraft_registries:volatile {} set value {}
