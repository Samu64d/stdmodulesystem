#
# server:management/player_list/add_executor
#
# Add the executor player to the player list
#> Context
#  @executor (in): the player entity
#> Return void

# Create a new player descriptor
function server:management/player_descriptor/new

# Add the element to the player list
data modify storage io: list_ref set value "storage server:volatile management.player_list"
data modify storage io: element_ref set value "storage io: player_descriptor"
function collections:referenced_list/add_last_unique
