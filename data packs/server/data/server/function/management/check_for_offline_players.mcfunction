#
# server:management/player_list_manager/check_for_offline_players
#

# Iterate through the player list
data modify storage io: callback set value "server:management/check_for_offline_players/check_descriptor"
function server:management/player_list/for_each_reverse
