#
# server:management/player_list/empty
#
# Empty the player list
#> Return void

data modify storage io: list_ref set value "storage server:volatile management.player_list"
function collections:referenced_list/empty
