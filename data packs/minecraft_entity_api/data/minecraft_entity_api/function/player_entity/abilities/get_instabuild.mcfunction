#
# mineweather:server/player_entity/abilities/get_instabuild
#
# Check if the player can destroy blocks
# context:       <position: none, executor: the player>
# arguments:     <> {}
# return values: <value: boolean flag> {}

execute store result score ::out value run data get entity @s abilities.instabuild 1.0
