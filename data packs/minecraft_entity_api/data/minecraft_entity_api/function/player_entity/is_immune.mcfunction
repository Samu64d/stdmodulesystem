#
# mineweather:server/player_entity/is_immune
#
# Check if the player is immune to the influence of the weather (temperature, wind...) and weather entities (lightning strikes, tornadoes...)
# context:       <position: none, executor: the player>
# arguments:     <> {}
# return values: <is_immune: boolean flag> {}

# Default to false
scoreboard players operation ::out is_immune = ::const FALSE

# The survival mode is disabled
execute if score ::config ENABLE_SURVIVAL = ::const FALSE run scoreboard players operation ::out is_immune = ::const TRUE

# The player is not handled
function mineweather:server/player_entity/is_handled
execute if score ::out is_handled = ::const TRUE run scoreboard players operation ::out is_immune = ::const TRUE

# The player is in creative or spectator mode
function mineweather:server/player_entity/game_mode/get
execute if score ::out game_mode = ::enum_game_modes CREATIVE run scoreboard players operation ::out is_immune = ::const TRUE
execute if score ::out game_mode = ::enum_game_modes SPECTATOR run scoreboard players operation ::out is_immune = ::const TRUE

# The player is died
function mineweather:server/player_entity/death/is_died
execute if score ::out is_died = ::const TRUE run scoreboard players operation ::out is_immune = ::const TRUE
