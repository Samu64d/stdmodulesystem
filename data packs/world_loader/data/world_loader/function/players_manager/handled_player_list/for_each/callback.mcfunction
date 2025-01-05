#
# world_loader:players_manager/handled_player_list/for_each/callback
#

# Call callback function
data modify storage io: handled_player_descriptor set from storage io: element
data modify storage io: callback set from storage world_loader:volatile players_manager.temp_callback
function world_loader:players_manager/handled_player_list/for_each/callback2 with storage io:
