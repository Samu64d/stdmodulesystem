#
# mineweather:server/player_entity/experience/get_next_level_remained_points
#
# Get how many experience points ramined for reaching the next level
# context:       <position: none, executor: the player>
# arguments:     <> {}
# return values: <value: points value> {}

# Get level points
function mineweather:server/player_entity/experience/get_level_points
scoreboard players operation ::player_entity points = ::out value

# Get current level
function mineweather:server/player_entity/experience/get_level

# Calculate total points needed for reaching the next level
scoreboard players operation ::in value = ::out value
function mineweather:server/player_entity/experience/calc_points_for_next_level

# Calculate difference
scoreboard players operation ::out value -= ::player_entity points
