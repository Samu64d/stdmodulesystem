#
# mineweather:server/player_entity/is_flying
#
# Check if the player is flying
# context:       <position: none, executor: the player>
# arguments:     <> {}
# return values: <is_flying: boolean flag> {}

execute store result score ::out is_flying run data get entity @s abilities.flying 1.0
