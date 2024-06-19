#
# server:management/player_list_manager/check_for_offline_players/check_descriptor
#

# Check for online status
execute unless function server:management/player_descriptor/is_online run function server:management/on_detect_player_left
