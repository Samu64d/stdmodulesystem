#
# mineweather:server/player_entity/experience/set_points
#
# Set player experience points
# context:       <position: none, executor: the player>
# arguments:     <value: points value> {}
# return values: <> {}

scoreboard players operation ::player_entity points = ::in value

# Get current points
function mineweather:server/player_entity/experience/get_points

# Calculate difference
scoreboard players operation ::in value = ::player_entity points
scoreboard players operation ::in value -= ::out value

# Update value
execute unless score ::in value matches 0 run function mineweather:server/player_entity/experience/set_points/update
