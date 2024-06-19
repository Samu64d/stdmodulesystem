#
# mineweather:server/player_entity/experience/calc_points_for_level
#
# Calculate how many experience points are needed for reaching a level value
# context:       <position: none, executor: none>
# arguments:     <value: level value> {}
# return values: <value: points value> {}

# Get function coefficients
execute if score ::in value matches 0..16 run function mineweather:server/player_entity/experience/calc_points_for_level/get_param_0
execute if score ::in value matches 17..31 run function mineweather:server/player_entity/experience/calc_points_for_level/get_param_1
execute if score ::in value matches 32.. run function mineweather:server/player_entity/experience/calc_points_for_level/get_param_2

# (X^2)*a
scoreboard players operation ::out value = ::in value
scoreboard players operation ::out value *= ::out value
scoreboard players operation ::out value *= ::out a

# X*b
scoreboard players operation ::player_entity temp0 = ::in value
scoreboard players operation ::player_entity temp0 *= ::out b
scoreboard players operation ::out value += ::player_entity temp0

# C
scoreboard players operation ::out value += ::out c

# Rescale
scoreboard players operation ::out value /= ::const 10E1
