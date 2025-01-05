#
# world_loader:players_manager/handled_player_list/remove_by_player_uuid
#
# Remove an handled player descriptor from the handled player list by it's uuid
#> Storage
#  @player_uuid (in): the player uuid
#> Return data
#  boolean flag

# Remove from the handled player list
data modify storage io: list_ref set value "storage world_loader:volatile players_manager.handled_player_list"
data modify storage io: like_element set value {}
data modify storage io: like_element.player set from storage io: player_uuid
return run function collections:referenced_list/remove_like
