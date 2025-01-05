#
# server:management/search_for_new_players
#

# Iterate through the selector player list
data modify storage io: callback set value "server:management/search_for_new_players/check_for_statistic"
function server:selector_player_list/for_each
