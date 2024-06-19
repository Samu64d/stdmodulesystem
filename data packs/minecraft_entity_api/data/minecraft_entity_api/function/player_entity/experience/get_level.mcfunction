#
# mineweather:server/player_entity/experience/get_level
#
# Get player experience level
# context:       <position: none, executor: the player>
# arguments:     <> {}
# return values: <value: level value> {}

execute store result score ::out value run experience query @s levels
