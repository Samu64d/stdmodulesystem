#
# server:management/player_list/for_each_reverse
#
# Iterate throuth the player list
#> Storage
#  @callback (in): the callback function
#> Return void

data modify storage server:volatile management.temp_callback set from storage io: callback

# Iterate through the player list
data modify storage io: list_ref set value "storage server:volatile management.player_list"
data modify storage io: callback set value "server:management/player_list/for_each_reverse/callback"
function collections:referenced_list/for_each_reverse
