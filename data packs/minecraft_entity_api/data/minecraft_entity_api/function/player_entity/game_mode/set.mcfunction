#
# mineweather:server/player_entity/game_mode/set
#
# Set the player game mode
# context:       <position: none, executor: the player>
# arguments:     <game_mode: game mode value> {}
# return values: <> {}

# Survival
execute if score ::in game_mode = ::enum_game_modes SURVIVAL run gamemode survival @s

# Creative
execute if score ::in game_mode = ::enum_game_modes CREATIVE run gamemode creative @s

# Adventure
execute if score ::in game_mode = ::enum_game_modes ADVENTURE run gamemode adventure @s

# Spectator
execute if score ::in game_mode = ::enum_game_modes SPECTATOR run gamemode spectator @s
