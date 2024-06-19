#
# mineweather:server/player_entity/cache/wipe_all
#

# Clear static data
data remove storage mineweather:static playerEntity
data modify storage mineweather:static playerEntity set value {}

# Clear volatile data
data remove storage mineweather:volatile playerEntity
data modify storage mineweather:volatile playerEntity set value {}
