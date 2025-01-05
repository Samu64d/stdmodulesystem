#
# mineweather:server/player_entity/experience/calc_points_for_next_level
#
# Calculate how many experience points are needed for reaching the next level
# context:       <position: none, executor: none>
# arguments:     <value: level value> {}
# return values: <value: points value> {}

# Get function coefficients
execute if score ::in value matches 0..15 run function mineweather:server/player_entity/experience/calc_points_for_next_level/get_param_0
execute if score ::in value matches 16..30 run function mineweather:server/player_entity/experience/calc_points_for_next_level/get_param_1
execute if score ::in value matches 31.. run function mineweather:server/player_entity/experience/calc_points_for_next_level/get_param_2

# X*b
scoreboard players operation ::out value = ::in value
scoreboard players operation ::out value *= ::out a

# C
scoreboard players operation ::out value += ::out b
