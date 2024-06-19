#
# server:management/player_list/add_executor
#
# Add the executor player to the player list
#> Context
#  @executor (in): the player
#> Return void

# Create a new player descriptor
function server:management/player_descriptor/new

# Add the element to the player list
data modify storage io: list set from storage server:volatile management.player_list
data modify storage io: element set from storage io: player_descriptor
function collections:list/add_last_unique
data modify storage server:volatile management.player_list set from storage io: list
