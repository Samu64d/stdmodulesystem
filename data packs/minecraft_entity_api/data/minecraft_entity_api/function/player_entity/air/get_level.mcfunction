#
# mineweather:server/player_entity/air/get_level
#
# Get the player air level
# context:       <position: none, executor: the player>
# arguments:     <> {}
# return values: <air: air level value> {}

execute store result score ::out air run data get entity @s Air 1.0
