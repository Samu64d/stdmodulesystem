#
# world_loader:players_manager/main/main
#

# Update player ticking areas
data modify storage io: callback set value "world_loader:players_manager/player_area/player_area_updater"
function world_loader:players_manager/handled_player_list/for_each
