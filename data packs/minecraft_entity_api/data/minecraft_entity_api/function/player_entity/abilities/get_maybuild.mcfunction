#
# mineweather:server/player_entity/abilities/get_maybuild
#
# Check if the player can place and destroy blocks
# context:       <position: none, executor: the player>
# arguments:     <> {}
# return values: <value: boolean flag> {}

execute store result score ::out value run data get entity @s abilities.mayBuild 1.0
