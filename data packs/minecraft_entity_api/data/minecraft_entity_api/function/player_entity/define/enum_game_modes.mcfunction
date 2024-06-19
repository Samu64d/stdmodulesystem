#
# mineweather:server/player_entity/init/enum_game_modes
#

#define score_holder ::enum_game_modes

scoreboard objectives add SURVIVAL dummy
scoreboard objectives add CREATIVE dummy
scoreboard objectives add ADVENTURE dummy
scoreboard objectives add SPECTATOR dummy

scoreboard players set ::enum_game_modes SURVIVAL 0
scoreboard players set ::enum_game_modes CREATIVE 1
scoreboard players set ::enum_game_modes ADVENTURE 2
scoreboard players set ::enum_game_modes SPECTATOR 3
