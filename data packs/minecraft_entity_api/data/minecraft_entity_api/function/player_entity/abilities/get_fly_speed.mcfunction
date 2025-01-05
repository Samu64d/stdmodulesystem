#
# mineweather:server/player_entity/abilities/get_fly_speed
#
# Get the player fly speed value expressed in centimeters
# context:       <position: none, executor: the player>
# arguments:     <> {}
# return values: <value: fly speed value> {}

execute store result score ::out value run data get entity @s abilities.flySpeed 100
