#
# server:platform/get_game_version
#
# Get the game/game data version. Return -1 if an error occurs
#> Return data
#  game version

# Get data version
execute store success score ::server::platform temp0 run data get entity @s DataVersion 1.0

# On fails
execute if score ::server::platform temp0 = ::const FALSE run scoreboard players set ::out game_version -1

# On success
execute if score ::server::platform temp0 = ::const TRUE store result score ::out game_version run data get entity @s DataVersion 1.0
