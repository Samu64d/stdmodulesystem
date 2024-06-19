#
# mineweather:server/player_entity/abilities/get_walk_speed
#
# Get the walk speed value expressed in centimeters
# context:       <position: none, executor: the player>
# arguments:     <> {}
# return values: <value: walk speed value> {}

execute store result score ::out value run data get entity @s abilities.walkSpeed 100
