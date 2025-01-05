#
# world_loader:players_manager/handled_player_list/add
#
# Add a handled player descriptor to the handled player list
#> Storage
#  @handled_player_descriptor (in): the handled player descriptor
#> Return void

# Add the element to the handled player list
data modify storage io: list_ref set value "storage world_loader:volatile players_manager.handled_player_list"
data modify storage io: element_ref set value "storage io: handled_player_descriptor"
function collections:referenced_list/add_last
