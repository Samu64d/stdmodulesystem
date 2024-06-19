#
# mineweather:server/player_entity/init/define
#

# Player entity module
#define score_holder ::player_entity

# Define variables

scoreboard objectives add value dummy
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy
scoreboard objectives add dimension dummy
scoreboard objectives add has_opened_gui dummy
scoreboard objectives add is_flying dummy
scoreboard objectives add is_handled dummy
scoreboard objectives add is_immune dummy

scoreboard objectives add air dummy

scoreboard objectives add a dummy
scoreboard objectives add b dummy
scoreboard objectives add c dummy
scoreboard objectives add points dummy
scoreboard objectives add total_points dummy

scoreboard objectives add game_mode dummy

scoreboard objectives add health dummy

scoreboard objectives add hunger dummy

scoreboard objectives add is_sleeping dummy

scoreboard objectives add amplifier dummy

# Enumerations
function mineweather:server/player_entity/init/enum_game_modes
