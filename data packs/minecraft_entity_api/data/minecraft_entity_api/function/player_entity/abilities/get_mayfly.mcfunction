#
# mineweather:server/player_entity/abilities/get_mayfly
#
# Check if the player can fly
# context:       <position: none, executor: the player>
# arguments:     <> {}
# return values: <value: boolean flag> {}

execute store result score ::out value run data get entity @s abilities.mayfly 1.0
