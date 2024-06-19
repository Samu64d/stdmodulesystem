#
# server:management/player_list_manager/search_for_new_players/check_for_statistic
#

execute unless score @s server_management.server_leave matches 0 run function server:management/on_detect_player_joined
