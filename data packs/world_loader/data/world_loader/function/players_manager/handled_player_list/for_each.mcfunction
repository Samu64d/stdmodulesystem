#
# world_loader:players_manager/handled_player_list/for_each
#
# Iterate through the handled player list
#> Storage
#  @callback (in): the callback function
#> Return void

data modify storage world_loader:volatile players_manager.temp_callback set from storage io: callback

# Iterate through the handled player list
data modify storage io: list_ref set value "storage world_loader:volatile players_manager.handled_player_list"
data modify storage io: callback set value "world_loader:players_manager/handled_player_list/for_each/callback"
function collections:referenced_list/for_each
