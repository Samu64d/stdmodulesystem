#
# mineweather:server/player_entity/experience/get_points
#
# Get player experience points
# context:       <position: none, executor: the player>
# arguments:     <> {}
# return values: <value: points value> {}

# Get level
function mineweather:server/player_entity/experience/get_level

# Get points for reach the level
scoreboard players operation ::in value = ::out value
function mineweather:server/player_entity/experience/calc_points_for_level
scoreboard players operation ::player_entity total_points = ::out value

# Get level points
function mineweather:server/player_entity/experience/get_level_points

# Add level points
scoreboard players operation ::out value += ::player_entity total_points
