#
# mineweather:server/player_entity/init/const
#

scoreboard objectives add DEF_SPAWN_DIM dummy

scoreboard players operation ::const DEF_SPAWN_DIM = ::enum_dimensions OVERWORLD
