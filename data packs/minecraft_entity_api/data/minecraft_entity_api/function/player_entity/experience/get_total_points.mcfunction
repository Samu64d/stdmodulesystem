#
# mineweather:server/player_entity/experience/get_total_points
#
# Get the total amount of player experience points collected upon death
# context:       <position: none, executor: the player>
# arguments:     <> {}
# return values: <value: points value> {}

execute store result score ::out value run data get entity @s XpTotal 1.0
