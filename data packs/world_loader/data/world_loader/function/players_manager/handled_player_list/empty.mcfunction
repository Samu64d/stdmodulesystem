#
# world_loader:players_manager/handled_player_list/empty
#
# Empty the handled player list
#> Return void

data modify storage io: list_ref set value "storage world_loader:volatile players_manager.handled_player_list"
function collections:referenced_list/empty
