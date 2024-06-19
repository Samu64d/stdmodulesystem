#
# server:management/player_descriptor/is_online
#
# Check if the player matching the player descriptor is online
#> Storage
#  @player_descriptor (in): the player descriptor
#> Return data
#  boolean flag

# Default found to false
scoreboard players operation ::server::management is_online = ::const FALSE

# Iterate through the player list
data modify storage io: callback set value "server:management/player_descriptor/is_online/check"
function server:selector_player_list/for_each

# Return data
return run scoreboard players get ::server::management is_online
