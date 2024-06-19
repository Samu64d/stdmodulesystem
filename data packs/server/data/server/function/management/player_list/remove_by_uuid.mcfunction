#
# server:management/player_list/remove_by_uuid
#
# Remove a player descriptor from the player list by it's uuid
#> Context
#  @uuid (in): the uuid
#> Return void

# Copy data
data modify storage server:volatile management.temp_uuid set from storage io: uuid

# Remove on matching uuid
data modify storage io: list set from storage server:volatile management.player_list
data modify storage io: callback set value "server:management/player_list/remove_by_uuid/match_handler"
function collections:list/remove_on_match
data modify storage server:volatile management.player_list set from storage io: list
