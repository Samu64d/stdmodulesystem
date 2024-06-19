#
# mineweather:server/player_entity/experience/get_level_points
#
# Get player experience level points
# context:       <position: none, executor: the player>
# arguments:     <> {}
# return values: <value: level points value> {}

execute store result score ::out value run experience query @s points
