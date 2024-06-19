#
# server:management/main
#

# Search for new players
function server:management/player_list_manager/search_for_new_players

# Check for offline players
function server:management/player_list_manager/check_for_offline_players

# Set online players count
execute store result score ::server::management online_players run function server:management/player_list/get_count

# Handle online players
data modify storage io: callback set value "server:management/handle_player"
function server:management/player_list/for_each_executor
