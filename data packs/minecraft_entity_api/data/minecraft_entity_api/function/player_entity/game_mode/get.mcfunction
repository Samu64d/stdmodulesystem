#
# mineweather:server/player_entity/game_mode/get
#
# Get the player game mode
# context:       <position: none, executor: the player>
# arguments:     <> {}
# return values: <game_mode: game mode value> {}

execute store result score ::out game_mode run data get entity @s playerGameType 1.0
