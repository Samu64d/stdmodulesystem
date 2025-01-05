#
# server:management/player_list/get_count
#
# Get the count of player descriptors in the player list
#> Return data
#  player descriptor count

data modify storage io: list_ref set value "storage server:volatile management.player_list"
return run function collections:referenced_list/get_length
