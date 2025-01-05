#
# keyboard:main/active_player_keyboard_map/for_each_player_uuid/callback
#

# Call callback function
data modify storage io: player_uuid set from storage io: key
data modify storage io: callback set from storage keyboard:volatile temp_callback
function keyboard:main/active_player_keyboard_map/for_each_player_uuid/callback2 with storage io:
