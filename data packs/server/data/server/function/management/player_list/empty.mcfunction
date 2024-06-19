#
# server:management/player_list/empty
#
# Empty the player list
#> Return void

data modify storage io: list set from storage server:volatile management.player_list
function collections:list/empty
data modify storage server:volatile management.player_list set from storage io: list
