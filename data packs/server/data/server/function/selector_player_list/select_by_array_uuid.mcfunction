#
# server:selector_player_list/select_by_array_uuid
#
# Select a player by it's uuid
#> Storage
#  @uuid (in): the player uuid
#  @callback (in): the callback function
#> Return data
#  boolean flag

# Default success to false
scoreboard players operation ::server success = ::const FALSE

# Select the player entity
function server:selector_player_list/select_by_array_uuid/select with storage io:

# Return data
return run scoreboard players get ::server success
