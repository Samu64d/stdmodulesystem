#
# mineweather:server/player_entity/experience/remove_levels
#
# Decrease player experience level
# context:       <position: none, executor: the player>
# arguments:     <value: levels value> {}
# return values: <> {}

# Get current level
function mineweather:server/player_entity/experience/get_level

# Remove levels
scoreboard players operation ::in value *= ::const NEGONE
scoreboard players operation ::in value += ::out value

# Set new level
function mineweather:server/player_entity/experience/set_level
