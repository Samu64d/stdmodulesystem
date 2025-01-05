#
# mineweather:server/player_entity/abilities/get_invulnerable
#
# Check if the player is invulnerable
# context:       <position: none, executor: the player>
# arguments:     <> {}
# return values: <value: boolean flag> {}

execute store result score ::out value run data get entity @s abilities.invulnerable 1.0
