#
# server:management/search_for_new_players/check_for_statistic
#

execute unless score @s server_management_server_leave matches 0 run function server:management/search_for_new_players/on_detect_player_joined
