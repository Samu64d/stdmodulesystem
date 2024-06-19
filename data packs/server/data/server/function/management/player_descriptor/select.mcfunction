#
# server:management/player_descriptor/select
#
# Select the player matching the player descriptor
#> Storage
#  @player_descriptor (in): the player descriptor
#  @callback (in): the callback
#> Return void

# Default found to false
scoreboard players operation ::server::management success = ::const FALSE

data modify storage server:volatile management.temp_callback set from storage io: callback

# Iterate through the player list
data modify storage io: callback set value "server:management/player_descriptor/select/check"
function server:selector_player_list/for_each

# Return data
return run scoreboard players get ::server::management success
