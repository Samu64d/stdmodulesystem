#
# mineweather:server/player_entity/experience/set_points/update
#

# Check difference sign
execute store result score ::player_entity temp0 if score ::in value matches 1..

# Add points
execute if score ::player_entity temp0 = ::const TRUE run function mineweather:server/player_entity/experience/add_points

# Remove points
execute if score ::player_entity temp0 = ::const FALSE run scoreboard players operation ::in value *= ::const NEGONE
execute if score ::player_entity temp0 = ::const FALSE run function mineweather:server/player_entity/experience/remove_points
