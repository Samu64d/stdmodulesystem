#
# mineweather:server/player_entity/hunger/get_level
#
# Get the player hunger level
# context:       <position: none, executor: the player>
# arguments:     <> {}
# return values: <hunger: hunger level value> {}

execute store result score ::out hunger run data get entity @s foodLevel 100
