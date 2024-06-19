#
# mineweather:server/player_entity/experience/add_levels
#
# Increase player experience level
# context:       <position: none, executor: the player>
# arguments:     <value: levels value> {}
# return values: <> {}

# Get current level
function mineweather:server/player_entity/experience/get_level

# Add levels
scoreboard players operation ::in value += ::out value

# Set new level
function mineweather:server/player_entity/experience/set_level
